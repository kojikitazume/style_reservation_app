class StylistsController < ApplicationController
  before_action :set_stylist, only: %i[show edit update destroy dashboard]
  def new
    @stylist = Stylist.new
  end

  def create
    @stylist = Stylist.new(stylist_params)
    if @stylist.save
      redirect_to @stylist, notice: 'スタイリストが作成されました。'
    else
      render :new
    end
  end

  def dashboard
    @reservations = @stylist.reservations.order(:date, :time)
  end

  private

  def set_stylist
    @stylist = Stylist.find(params[:id])
  end

  def stylist_params
    params.require(:stylist).permit(:name, :profile, :profile_image) # 追加
  end
end
