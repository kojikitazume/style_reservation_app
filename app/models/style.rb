class Style < ApplicationRecord
  has_one_attached :image

  scope :trending, -> { where(trending: true) }
end
