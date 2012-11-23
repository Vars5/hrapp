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

require 'spec_helper'

describe Joblisting do
  pending "add some examples to (or delete) #{__FILE__}"
end
