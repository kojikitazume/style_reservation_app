class ReservationsController < ApplicationController
  def new
    @stylist = Stylist.find(params[:stylist_id])
    @reservation = @stylist.reservations.new
  end

  def create
    @stylist = Stylist.find(params[:stylist_id])
    @reservation = @stylist.reservations.new(reservation_params)
    @reservation.user = current_user
    if @reservation.save
      redirect_to stylist_path(@stylist), notice: "Reservation made!"
    else
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date, :time)
  end
end
