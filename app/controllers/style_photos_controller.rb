class StylePhotosController < ApplicationController
  def new
    @stylist = Stylist.find(params[:stylist_id])
    @style_photo = @stylist.style_photos.new
  end

  def create
    @stylist = Stylist.find(params[:stylist_id])
    @style_photo = @stylist.style_photos.new(style_photo_params)
    if @style_photo.save
      redirect_to stylist_path(@stylist), notice: "Style photo uploaded!"
    else
      render :new
    end
  end

  private

  def style_photo_params
    params.require(:style_photo).permit(:title, :image)
  end
end
