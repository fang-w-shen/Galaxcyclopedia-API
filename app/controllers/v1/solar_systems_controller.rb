module  V1
  class SolarSystemsController < ApplicationController
    # before_action :authorize_request

    def index
      if params[:api_key] && User.exists?(:api_key => params[:api_key])
        response = { message: Message.successful_request, solarsystem: 'version 1.0' }
        json_response(response, :created)
      else
        json_response({ Message: 'Invalid API KEY'})
      end
    end



    attr_accessor :current_user
    private
    def authorize_request
      @current_user = (AuthorizeApiRequest.new(request.headers).call)[:user]
    end
  end
end