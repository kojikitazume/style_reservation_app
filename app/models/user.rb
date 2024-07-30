class User < ApplicationRecord
  has_many :stylists
  has_many :reservations
  has_many :reviews

  enum role: { user: 0, stylist: 1, admin: 2 }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true, uniqueness: true
end
