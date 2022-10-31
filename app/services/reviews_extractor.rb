class ReviewsExtractor
  def execute(params)
    fetch_reviews(params[:url], params[:page])
  end

  def fetch_reviews(url, required_page = nil)
    puts url
    puts required_page
    page = 1
    reviews = []

    loop do
      uri = URI.parse("#{url}?sort=&pid=#{page}")
      html_response = Net::HTTP.get_response(uri).body
      doc = Nokogiri::HTML(html_response)

      reviews_objects = doc.search('.mainReviews')

      reviews_objects.each do |review|
        reviews << fetch_review_information(review)
      end

      break if reviews_objects.size.zero? || required_page.present?

      page += 1
    end

    reviews
  end

  def fetch_review_information(review_object)
    review_data = review_object.content.split("\n").map(&:strip).reject(&:empty?)

    {
      star_ratting: review_data.first,
      is_recommended: review_data[2],
      review_title: review_data[3],
      review_content: review_data[4],
      author: review_data[5].split(' ').join(' '),
      date_of_review: review_data[6]
    }
  end
end
