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

require 'spec_helper'

describe Company do
  pending "add some examples to (or delete) #{__FILE__}"
end
