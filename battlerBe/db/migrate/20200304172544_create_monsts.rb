class CreateMonsts < ActiveRecord::Migration[6.0]
  def change
    create_table :monsts do |t|
      t.string :name
      t.integer :exp
      t.integer :str
      t.integer :agil
      t.integer :const
      t.string :img
      t.string :desc

      t.timestamps
    end
  end
end
