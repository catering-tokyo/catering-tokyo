class Users::ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
    @courses = Course.where(shop_id: params[:id])
  	@review = Review.new
  	@reviews = @shop.reviews
  end
end
