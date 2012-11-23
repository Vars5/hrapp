class RatingsController < ApplicationController

before_filter :authenticate_user!

  def create
    @job_submission = JobSubmission.find_by_id(params[:job_submission_id])
    @rating = Rating.new(params[:rating])
    @rating.job_submission_id = @job_submission.id
    @rating.user_id = current_user.id
    if @rating.save
      respond_to do | format |
        format.html { redirect_to job_submission_path(@job_submission), :notice => "Your Rating has been saved" }
        format.js
      end
    end
  end


  def update
    @job_submission = JobSubmission.find_by_id(params[:job_submission_id])
    @rating = current_user.ratings.find_by_job_submission_id(@job_submission.id)
    if @rating.update_attributes(params[:rating])
      respond_to do | format |
        format.html { redirect_to job_submission_path(@job_submission), :notice => "Your Rating has been Updaed" }
        format.js
      end
    end    
  end

end
