class RemoveStatusFromBooks < ActiveRecord::Migration
  def change
    remove_column :books, :status
  end
end
