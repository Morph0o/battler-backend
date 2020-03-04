class CreateMobmoves < ActiveRecord::Migration[6.0]
  def change
    create_table :mobmoves do |t|
      t.integer :mob_id
      t.integer :move_id

      t.timestamps
    end
  end
end
