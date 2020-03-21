class User < ApplicationRecord
  has_secure_password
  has_many :usermobs
  has_many :mobs, through: :usermobs

end
