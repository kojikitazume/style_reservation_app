class PagesController < ApplicationController
  def home
    @featured_stylists = Stylist.where(featured: true) # 例として条件を修正
    @recent_reviews = Review.order(created_at: :desc).limit(3) # 最近のレビューを3件取得
    @trending_styles = Style.where(trending: true) # 例として条件を修正
    @new_stylists = Stylist.order(created_at: :desc).limit(3) # 新しいスタイリストを3件取得
  end
end
