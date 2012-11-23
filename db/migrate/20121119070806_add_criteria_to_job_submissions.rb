class AddCriteriaToJobSubmissions < ActiveRecord::Migration
  def change
    add_column :job_submissions, :criteria, :integer
  end
end
