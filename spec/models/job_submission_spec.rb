# == Schema Information
#
# Table name: job_submissions
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  email            :string(255)
#  question1_answer :string(255)
#  joblisting_id    :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'spec_helper'

describe JobSubmission do
  pending "add some examples to (or delete) #{__FILE__}"
end
