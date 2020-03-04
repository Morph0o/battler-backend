class CreateUsermobs < ActiveRecord::Migration[6.0]
  def change
    create_table :usermobs do |t|
      t.integer :user_id
      t.integer :mob_id

      t.timestamps
    end
  end
end
