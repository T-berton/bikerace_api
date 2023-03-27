class LocationsController < ApplicationController
    def index
        begin
        @locations = Location.all
        render json: @locations
        rescue => e 
            render json: {error: "Internal Server Error, #{e.message}"}, status: :internal_server_error
        end
    end

    def show 
        begin
        @location = Location.find(params[:id])
        render json: @location
        rescue  ActiveRecord::RecordNotFound => e 
            render json: {error: "Record Not Found, #{e.message}"}, status: :not_found
        rescue =>
            render json: {error: "Internal Server Error, #{e.message}"}, status: :internal_server_error 
        end
    end 
    
end
