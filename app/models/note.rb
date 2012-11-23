class Note < ActiveRecord::Base
  attr_accessible :content, :job_submission_id, :user_id

  belongs_to :job_submission


end

