# == Schema Information
#
# Table name: companies
#
#  id           :integer          not null, primary key
#  company_name :string(255)
#  signup_code  :string(255)
#  owner_id     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Company < ActiveRecord::Base
   attr_accessible :company_name, :signup_code, :owner_id
   
   has_many :users
   has_many :joblistings
end
