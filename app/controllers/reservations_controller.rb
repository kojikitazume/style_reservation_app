# app/controllers/reservations_controller.rb
class ReservationsController < ApplicationController
  before_action :set_stylist

  def new
    @reservation = @stylist.reservations.build
  end

  def create
    @reservation = @stylist.reservations.build(reservation_params)
    if @reservation.save
      redirect_to @stylist, notice: '予約が成功しました。'
    else
      render :new
    end
  end

  private

  def set_stylist
    @stylist = Stylist.find(params[:stylist_id])
  end

  def reservation_params
    params.require(:reservation).permit(:date, :time, :user_id)
  end
end
