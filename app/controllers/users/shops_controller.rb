class Users::ShopsController < ApplicationController

  def index

  end

  def show
  	@shop = Shop.find(params[:id])
  	@review = Review.new
  	@reviews = @shop.reviews
  end
end
