class ReviewsController < ApplicationController
  def index
    @reviews = ReviewsExtractor.new.execute(params)
    raise "No reviews found" if @reviews.empty?
  end
end
