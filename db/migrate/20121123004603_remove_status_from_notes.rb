class RemoveStatusFromNotes < ActiveRecord::Migration
  def change
    remove_column :notes, :status
  end
end
