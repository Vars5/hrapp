class JoblistingsController < ApplicationController
  
  before_filter :authenticate_user!, except: [:show, :index]

  def new
    @joblisting = Joblisting.new    
  end

  def create
    @joblisting = Joblisting.new(params[:joblisting])
    @joblisting.user_id = current_user.id
    @joblisting.company_id = current_user.company_id   
    
    if @joblisting.save
      flash[:success] = "Job Creation Successful"
      redirect_to @joblisting
    else
      render 'new'
    end
end


  def edit
    @joblisting = Joblisting.find(params[:id])
  end
  
  def update
    @joblisting = Joblisting.find(params[:id])
    if @joblisting.update_attributes(params[:joblisting])
      flash[:success] = "Job Edit Successful!"
      redirect_to @joblisting
    end
  end

  def show
    @joblisting = Joblisting.find(params[:id])
    @job_submission = @joblisting.job_submissions.build
    @company = Company.find_by_id(@joblisting.company_id)
  end

  def index
  end
end
