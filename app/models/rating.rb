class Rating < ActiveRecord::Base
  attr_accessible :JobSubmission_id, :user_id, :value
  
  belongs_to :job_submission
  belongs_to :user
  

  
end
