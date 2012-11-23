# == Schema Information
#
# Table name: joblistings
#
#  id         :integer          not null, primary key
#  job_name   :string(255)
#  question1  :string(255)
#  user_id    :integer
#  company_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Joblisting < ActiveRecord::Base
  attr_accessible :job_name, :question1, :user_id, :company_id, :stage, :description
  
  belongs_to :company
  
  has_many :job_submissions
  
  
  
end
