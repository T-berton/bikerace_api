class SubmissionsController < ApplicationController
    def create
        @submission = Submission.new(submission_params)
        if @submission.save
            render json: @submission, status: :created 
        else
            render json: @submission.errors, status: :unprocessable_entity
        end
    end

    def index
        begin 
        @submissions = Submission.all
        render json: @submissions
        rescue => e  
            render json: {error: "Internal Server Error"}, status: :internal_server_error
        end 
    end

    def show
        begin  
        @submission = Submission.find(params[:id])
        render json: @submission
        rescue ActiveRecord::RecordNotFound => e
            render json: {error: "Record Not Found"}, status: :not_found 
        rescue => e 
            render json: {error: "Internal Server Error"}, status: :internal_server_error
        end 
    end

    def update
        @submission = Submission.find(params[:id])
        if @submission.update(submission_params)
            render json: @submission, status: :accepted
        else
          render json: @submission.errors, status: :unprocessable_entity
        end
    end
        

    private 
        def submission_params
            params.require(:submission).permit(:firstname,:lastname,:email_address,:slogan_idea)
        end 
    
    
end
