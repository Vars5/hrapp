  class JobSubmissionsController < ApplicationController

  before_filter :authenticate_user!, except: [:create]

  def create
    @job_listing_id = Joblisting.find(params[:submission][:joblisting_id])
    if @job_submisison = @job_listing_id.job_submissions.create(params[:submission])
    flash[:success]="Thank you for your job interest!"
      redirect_to @job_listing_id
    end

  end

  def edit
    
  end
  
  def update
    @job_submission = JobSubmission.find(params[:id])
   
    
    if  @job_update = @job_submission.update_attributes(params[:job_submission])
      redirect_to @job_submission
    else
      redirect_to @job_submission
    end
    
  end

  def show
    @job_submission = JobSubmission.find(params[:id])
    @note = @job_submission.notes.build
    @feed = @job_submission.notes.all
  
    
  end

  def index
    @all_job_submissions = JobSubmission.all
  end
  
end
