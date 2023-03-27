class RidersController < ApplicationController
    def index 
        begin
        @riders = Rider.all
        render json: @riders 
        rescue => e 
            render json: {error: "Internal Servor Error, #{e.message}"}, status: :internal_server_error
        end    
    end 

    def show 
        begin
        @rider= Rider.find(params[:id])
        render json: @rider 
        rescue ActiveRecord::RecordNotFound => e 
            render json: {error: "Record Not Found, #{e.message}"}, status: :not_found
        rescue => e 
            render json: {error: "Internal Servor Error, #{e.message}"}, status: :internal_server_error
        end
    end 
end
