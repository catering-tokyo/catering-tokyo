class Users::ShopsController < ApplicationController
  def index
    # @shops = shop_search_params
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
    @courses = Course.where(shop_id: params[:id])
  	@review = Review.new
    @reviews = @shop.reviews

    @hash = Gmaps4rails.build_markers(@shop) do |place, marker|
      marker.lat place.latitude
      marker.lng place.longitude
      marker.infowindow place.name
    end
  end

end
