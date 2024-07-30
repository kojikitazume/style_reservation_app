class ReviewsController < ApplicationController
  def new
    @stylist = Stylist.find(params[:stylist_id])
    @review = @stylist.reviews.new
  end

  def create
    @stylist = Stylist.find(params[:stylist_id])
    @review = @stylist.reviews.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to stylist_path(@stylist), notice: 'Review submitted!'
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
