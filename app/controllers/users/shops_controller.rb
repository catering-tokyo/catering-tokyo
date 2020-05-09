class Users::ShopsController < ApplicationController
  def index
<<<<<<< Updated upstream
  	 	
  end

  def show
  	@shop = Shop.find(params[:id])
  	@reviews = Reviews.where(shop_id: params[:id])
=======
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
>>>>>>> Stashed changes
  end
end
