class AddNamesToJobSubmissions < ActiveRecord::Migration
  def change
    add_column :job_submissions, :first_name, :string
    add_column :job_submissions, :last_name, :string
  end
end
