class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :content
      t.integer :job_submission_id
      t.integer :user_id

      t.timestamps
    end
  end
end
