class StylistsController < ApplicationController
  def index
    @stylists = Stylist.all
  end

  def show
    @stylist = Stylist.find(params[:id])
    @style_photos = @stylist.style_photos
    @reviews = @stylist.reviews
    @reservation = Reservation.new
  end
end
