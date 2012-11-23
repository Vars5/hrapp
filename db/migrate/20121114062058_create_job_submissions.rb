class CreateJobSubmissions < ActiveRecord::Migration
  def change
    create_table :job_submissions do |t|
      t.string :name
      t.string :email
      t.string :question1_answer
      t.integer :joblisting_id
      
      
      t.timestamps
    end
  end
end
