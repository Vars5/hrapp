class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|

      t.string :company_name
      t.string :signup_code
      t.integer :owner_id
      

      t.timestamps
    end
  end
end
