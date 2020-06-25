class Users::FavoritesController < ApplicationController
  before_action :set_shop, only:[:create, :destroy]

  def index
    @favorites = Favorite.where(user_id: current_user.id)
  end

  def create
    @favorite = Favorite.create(user_id: current_user.id, shop_id: params[:shop_id])
    @shop = Shop.find(params[:shop_id])
    @favorites = Favorite.where(shop_id: params[:shop_id])
    #flash[:success] = "お気に入り登録しました。"
  end

  def destroy
    if params[:type] == 'default'
      @favorite = Favorite.find_by(user_id: current_user.id, shop_id: params[:shop_id])
      @shop = Shop.find(params[:shop_id])
      @favorite.destroy
      redirect_to request.referer
    else
      @favorite = Favorite.find_by(user_id: current_user.id, shop_id: params[:shop_id])
      @shop = Shop.find(params[:shop_id])
      @favorite.destroy
      @favorites = Favorite.where(shop_id: params[:shop_id])
      #flash[:success] = "お気に入り削除しました。"
    end
  end

  private

  def set_shop
    @shop = Shop.find(params[:shop_id])
  end
  def favorite_params
    params.permit(:shop_id)
  end
end
