class User < ApplicationRecord
  has_many :userchats
  has_many :chatrooms, through: :userchats
  has_many :messages, through: :chatrooms
end
