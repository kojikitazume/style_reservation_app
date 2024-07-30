class StylePhoto < ApplicationRecord
  has_many :style_photos_tags
  has_many :tags, through: :style_photos_tags
end
