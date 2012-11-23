class CompaniesController < ApplicationController

  before_filter :does_company_exist?, except: [:new, :create, :assign_user_with_signup_code]
  before_filter :authenticate_user!
  
  def new
    @company = Company.new
    
    
  end
  
  def create
    @company = Company.new(params[:company])
    if @company.save
      current_user.update_attributes(:company_id => @company.id)
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  
  def assign_user_with_signup_code
    @code = params[:teamcode][:signup_code]
    @teamcode = Company.where("signup_code =?", @code).first
    if @teamcode.nil? 
      flash[:alert] ="The teamcode you have entered does not exist"
    else
      current_user.update_attributes(:company_id => @teamcode.id)
        flash[:success]="Welcome!"
        redirect_to root_path
    end    
    
  end
  
  def edit
    @comapny = Company.find(params[:id])
  end
  
  def update
    @company = Company.find(params[:id])
    if @company.update_attributes(params[:company])
      redirect_to @company
    else
      render 'new'
    end
  end

  def destroy 
  end
  
  def show
  end
  
  def index
    if current_user.company_id.nil?
      #
    else 
      @user = User.where('company_id = ?',current_user.company_id )
    end
  end
  
  protected
  
    def does_company_exist?
      if current_user.company_id.nil?
        redirect_to new_company_path
      end
    end
  
  
end
