class Stylist < ApplicationRecord
  has_many :style_photos
  has_many :reservations
  has_many :reviews
  has_one_attached :profile_picture

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  scope :featured, -> { where(featured: true) }
  scope :newly_registered, -> { where('created_at >= ?', 1.month.ago) }
  scope :trending, -> { where(trending: true) }
  
  def average_rating
    reviews.average(:rating).to_f
  end
end
