class NotesController < ApplicationController
  
  before_filter :authenticate_user!
  
  
  def create
    
    @job_submission_id = JobSubmission.find(params[:note][:job_submission_id])
    @note = @job_submission_id.notes.build(params[:note])
    @note.user_id = current_user.id
    if @note.save
      respond_to do |format|
        format.html { redirect_to @job_submission_id }
        format.js
      end
    else
      render 'show'
    end 
   
  end
  
  def show
  end

  def edit
  end
end

    