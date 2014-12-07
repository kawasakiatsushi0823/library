class CreateTableLending < ActiveRecord::Migration
  def change
    create_table :lendings do |t|
      t.integer :member_id
      t.integer :book_number_id
      t.integer :status

      t.timestamps
    end
  end
end
