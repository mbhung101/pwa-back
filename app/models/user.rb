class User < ApplicationRecord
  has_many :chatrooms
  has_many :messages, through: :chatrooms
end
