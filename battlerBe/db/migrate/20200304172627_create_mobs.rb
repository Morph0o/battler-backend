class CreateMobs < ActiveRecord::Migration[6.0]
  def change
    create_table :mobs do |t|
      t.string :name
      t.integer :hp
      t.integer :level
      t.integer :exp
      t.integer :str
      t.integer :agil
      t.integer :con
      t.string :desc
      t.string :img

      t.timestamps
    end
  end
end
