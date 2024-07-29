class Stylist < ApplicationRecord
  has_many :style_photos
  has_many :reservations
  has_many :reviews
  has_one_attached :profile_picture
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
