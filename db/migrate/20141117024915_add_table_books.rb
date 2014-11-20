class AddTableBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :status
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
