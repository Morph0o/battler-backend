class CreateMonstmoves < ActiveRecord::Migration[6.0]
  def change
    create_table :monstmoves do |t|
      t.integer :monst_id
      t.integer :move_id

      t.timestamps
    end
  end
end
