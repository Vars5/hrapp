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

class JobSubmission < ActiveRecord::Base
  attr_accessible :name, :email, :question1_answer, :joblisting_id, :status, :criteria, :first_name, :last_name
  
  belongs_to :joblisting
  has_many :notes
  
  # Relationship with Ratings Model
  has_many :ratings
  has_many :raters, :through => :ratings, :source => :users
  
  def average_rating
    @value = 0
        self.ratings.each do |rating|
            @value = @value + rating.value
        end
        @total = self.ratings.size
        @value.to_f / @total.to_f
  end
  
end
