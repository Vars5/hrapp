class CreateJoblistings < ActiveRecord::Migration
  def change
    create_table :joblistings do |t|
      t.string :job_name
      t.string :question1
      t.integer :user_id
      t.integer :company_id

      t.timestamps
    end
  end
end
