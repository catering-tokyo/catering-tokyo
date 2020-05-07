class Users::ShopsController < ApplicationController
  def index
  	 	
  end

  def show
  	@shop = Shop.find(params[:id])
  	@reviews = Reviews.where(shop_id: params[:id])
  end
end
