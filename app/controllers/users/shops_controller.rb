class Users::ShopsController < ApplicationController
  def index
    if params[:place] && params[:place] == 'top5'
      @shops = Shop.joins(:reviews).group(:id).order('(star) desc').limit(5)
    elsif params[:place] && params[:place] == 'favo5'
      @shops = Shop.joins(:favorites).group(:id).order('count(shop_id) desc').limit(5)
      
    else
      @shops = Shop.all
    end

  end

  def show
    @shop = Shop.find(params[:id])
    @courses = Course.where(shop_id: params[:id])
  	@review = Review.new
    @reviews = @shop.reviews

    # binding.pry

    # @hash = Gmaps4rails.build_markers(@shop) do |place, marker|
    #   marker.lat place.latitude
    #   marker.lng place.longitude
    #   marker.infowindow place.name
    # end
  end
end

