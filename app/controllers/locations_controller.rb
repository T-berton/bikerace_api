class LocationsController < ApplicationController
    def index
        begin
          @locations = Location.includes(:rider).all      
          render json: @locations.to_json(include: { rider: { only: [:first_name, :last_name] } })
        rescue => e
          render json: { error: "Internal Server Error, #{e.message}" }, status: :internal_server_error
        end
      end
      

    def show 
        begin
        @location = Location.find(params[:id])
        render json: @location.to_json(include: :rider)
        rescue  ActiveRecord::RecordNotFound => e 
            render json: {error: "Record Not Found, #{e.message}"}, status: :not_found
        rescue => e
            render json: {error: "Internal Server Error, #{e.message}"}, status: :internal_server_error 
        end
    end 
    
end
