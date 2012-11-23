class AddDateToJoblisting < ActiveRecord::Migration
  def change
    add_column :joblistings, :closing_date, :date
    add_column :users, :admin, :boolean, default: false
  end
end
