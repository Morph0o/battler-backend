class Monst < ApplicationRecord
  has_many :monstmoves
  has_many :moves, through: :monstmoves
end
