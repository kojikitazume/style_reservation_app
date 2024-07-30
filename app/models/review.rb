class Review < ApplicationRecord
  belongs_to :stylist
  belongs_to :user

  validates :rating, inclusion: { in: 1..5 }
  scope :recent, -> { order(created_at: :desc).limit(5) }
end
