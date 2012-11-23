class AddDescriptionToJoblisting < ActiveRecord::Migration
  def change
    add_column :joblistings, :description, :string
  end
end
