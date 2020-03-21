class Move < ApplicationRecord
  has_many :mobmoves
  has_many :mobs, through: :mobmoves
  has_many :mostermoves
  has_many :monsts, through:  :monstmoves
end
