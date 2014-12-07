class CreateBableBookNumbers < ActiveRecord::Migration
  def change
    create_table :book_numbers do |t|
      t.integer :edition_id
      t.integer :status
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
