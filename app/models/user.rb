class User < ApplicationRecord
  has_many :reservations
  has_many :reviews

  enum role: { user: 0, stylist: 1, admin: 2 }
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
