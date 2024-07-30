class Tag < ApplicationRecord
  has_many :style_photos_tags
  has_many :style_photos, through: :style_photos_tags
end
