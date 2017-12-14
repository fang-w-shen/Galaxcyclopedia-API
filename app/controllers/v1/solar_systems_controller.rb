module  V1
  class SolarSystemsController < ApplicationController


    def index
      if params[:api_key] && User.exists?(:api_key => params[:api_key])
        response = { status: Message.successful_request, solarsystemapi: 'version 1.0', data: Planet.all.select(:id,:name,:moons) }
        json_response(response, :created)
      else
        json_response({ Message: 'Invalid API KEY'})
      end
    end


  end
end