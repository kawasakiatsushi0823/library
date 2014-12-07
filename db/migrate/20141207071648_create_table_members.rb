class CreateTableMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.string :password
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
