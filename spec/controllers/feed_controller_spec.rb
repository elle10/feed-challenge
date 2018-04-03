require 'rails_helper'
RSpec.describe FeedController do

  describe "GET all activities" do
    before :each do
      get :index
    end
    it "returns a successfull 200 response" do
      expect(response).to have_http_status(200)
    end
    it "returns all activities" do
      parsed_response = JSON.parse(response.body)
      expect(parsed_response).not_to be_empty
      expect(parsed_response.first['verb']).to eq("posted")
      expect(response).to have_http_status(200)
    end
  end
    # it "returns error if not authorized" do
    #   user = FactoryGirl.create(:user)
    #   user.confirm!
    #   trips_count = 5
    #   FactoryGirl.create_list(:requested_trip, trips_count, user: user)
    #   get :all_trips_user
    #   expect(response).not_to have_http_status(200)
    # end
end
