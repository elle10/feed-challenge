class FeedController < ApplicationController
  def index
    json = HTTParty.get("https://feed-challenge-api.herokuapp.com/activities").parsed_response
    @parsed_json= json .map { |e| { verb: e['verb'], actor: e['actor'], content: e[:content], description: e[:description] } }
    if stale?(json)
      render json: @parsed_json
    end
  end
end
