# app/controllers/stylists_controller.rb
class StylistsController < ApplicationController
  before_action :set_stylist, only: [:show, :edit, :update, :destroy, :dashboard]

  def dashboard
    @reservations = @stylist.reservations.order(:date, :time)
  end

  private

  def set_stylist
    @stylist = Stylist.find(params[:id])
  end
end
