class PagesController < ApplicationController
  def home
    @featured_stylists = Stylist.featured
    @recent_reviews = Review.recent
    @new_stylists = Stylist.newly_registered
  end
end
