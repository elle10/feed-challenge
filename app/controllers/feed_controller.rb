class FeedController < ApplicationController
  def index
    get_array_for_user
    if stale?(@json)
      render json: @final_array
    end
  end
  private
  def get_array_for_user
    @final_array=[]
    @json = HTTParty.get("https://feed-challenge-api.herokuapp.com/activities").parsed_response
    parsed_json = @json.select { |e| e['object'].split(":").last.to_i == 1}
    parsed_json.map do |json|
      if json['verb'] == "shared"
       url = HTTParty.get("https://feed-challenge-api.herokuapp.com/shares/1").parsed_response['url']
       @final_array << {url: url,verb: json['verb'],actor: json['actor'], description: "#{json['actor'] } posted #{url}}"}
      else
        content = HTTParty.get("https://feed-challenge-api.herokuapp.com/posts/1").parsed_response['content']
       @final_array << {content: content,verb: json['verb'],actor: json['actor'], description: "#{json['actor'] } posted #{content}}"}
      end
    end
  end
end
