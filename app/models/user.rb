class User < ApplicationRecord
  has_many :reservations
  has_many :reviews
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
