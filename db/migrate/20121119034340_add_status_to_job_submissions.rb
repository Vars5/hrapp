class AddStatusToJobSubmissions < ActiveRecord::Migration
  def change
    add_column :job_submissions, :status, :string
  end
end
