class StaticpagesController < ApplicationController
  
  
  def home
  end

  def about
  end
  
  def dashboard
    # Need to limit by Company
    @joblistings = Joblisting.all
    
    
  end
end
