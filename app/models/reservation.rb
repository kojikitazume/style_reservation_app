class Reservation < ApplicationRecord
  belongs_to :stylist
  belongs_to :user
end
