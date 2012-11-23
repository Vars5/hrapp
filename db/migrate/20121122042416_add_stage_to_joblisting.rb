class AddStageToJoblisting < ActiveRecord::Migration
  def change
    add_column :joblistings, :stage, :string
  end
end
