require 'rails_helper'

RSpec.describe Stylist, type: :model do
  it "calculates average rating correctly" do
    stylist = create(:stylist)
    create(:review, stylist: stylist, rating: 5)
    create(:review, stylist: stylist, rating: 3)

    expect(stylist.average_rating).to eq(4.0)
  end
end
