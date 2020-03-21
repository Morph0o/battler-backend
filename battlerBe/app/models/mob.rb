class Mob < ApplicationRecord
  has_many :mobmoves
  has_many :moves, through: :mobmoves
end
