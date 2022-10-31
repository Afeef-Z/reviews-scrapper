require 'rails_helper'

RSpec.describe "Reviews", type: :request do
  let!(:url) { 'https://www.lendingtree.com/reviews/business/ondeck/51886298' }

  describe "GET /index" do
    it 'def' do
      get reviews_path, params: { url: url, page: 1 }

      expect(assigns(:reviews).count).to eq 10
    end
  end
end
