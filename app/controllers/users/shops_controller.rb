class Users::ShopsController < ApplicationController

  def index

    if params[:place] && params[:place] == 'top5'
      #お店averageを出す
       shops = []
       Shop.all.each do |shop|
        shops << [shop.reviews.average(:star).to_f.round(2), shop.id]
      end

      #top5を出す
      joui = []
      shops.max(5).each do |i|
        joui << i[1]
      end
      
      #top5のお店を探す
      omise = Shop.where(id: joui)
      @shops = []
      omise.each do |mise|
        @shops << [mise.reviews.average(:star).to_f.round(2), mise]
      end

      #top5順に並び替える
      @shops.sort!{|a, b| b <=> a}
      @shopgenres = ShopGenre.all
    elsif params[:place] && params[:place] == 'favo5'
      @shops = Shop.joins(:favorites).group(:id).order('count(shop_id) desc').limit(5)
      @shopgenres = ShopGenre.all
    elsif params[:shopgenre_id] != nil
      @shop = params["shopgenre_id"]
      @shops = Shop.joins(:shop_genres)
                   .merge(ShopGenre.where(id: @shop)).page(params[:page]).per(15)
      @shopgenres = ShopGenre.all
      
    else
      @shops = Shop.all.page(params[:page]).per(15)
      @shopgenres = ShopGenre.all
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

