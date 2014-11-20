class CreateEditions < ActiveRecord::Migration
  def change
    create_table :editions do |t|
      t.references :book
      t.string :type
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
