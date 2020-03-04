class CreateMoves < ActiveRecord::Migration[6.0]
  def change
    create_table :moves do |t|
      t.string :name
      t.string :type
      t.integer :attack
      t.string :desc

      t.timestamps
    end
  end
end
