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
        @submissions = Submission.all
        render json: @submissions
    end

    def show
        @submission = Submission.find(params([:id]))
        render json: @submission
    end

    def update
        @submission = Submission.find(params[:id])
        if @submission.update_attributes(submission_params)
            render json: @submission, status: :accepted
        else
          render json: @submission.errors, status :unprocessable_entity
        end
    end
    
    
    
    

    private 
        def submission_params
            params.require(:submission).permit(:riders_id,:email_address,:slogan_idea)
        end 
    
    
end
