class ChangeColumnFromEdition < ActiveRecord::Migration
  def change
    rename_column :editions, :type, :kind
  end
end
