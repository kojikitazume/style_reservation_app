class StylePhoto < ApplicationRecord
  belongs_to :stylist
  has_one_attached :image
end
