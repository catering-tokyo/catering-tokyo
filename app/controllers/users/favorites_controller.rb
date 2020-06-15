class Users::FavoritesController < ApplicationController
  before_action :set_shop, only:[:create, :destroy]

  def index
    @favorites = Favorite.where(user_id: current_user.id)
  end

  def create
    @favorite = Favorite.create(user_id: current_user.id, shop_id: params[:shop_id])
    @shop = Shop.find(params[:shop_id])
    @favorites = Favorite.where(shop_id: params[:shop_id])
    flash[:success] = "お気に入り登録しました。"
    #@favorite = Favorite.new
    #binding.pry
    #@favorite.user_id = current_user.id
    #@favorite.shop_id = params[:shop_id]
    #if  @favorite.save
      #flash[:success] = "お気に入りに登録しました。"
    #else
      #flash.now[:danger] = "エラーです"
    #end
  end

  def destroy
    @favorite = Favorite.find_by(user_id: current_user.id, shop_id: params[:shop_id])
    @shop = Shop.find(params[:shop_id])
    @favorite.destroy
    @favorites = Favorite.where(shop_id: params[:shop_id])
    flash[:success] = "お気に入り削除しました。"

    #favorite = Favorite.find_by(user_id: params[:user_id])
    #favorite = Favorite.find_by(shop_id: params[:shop_id])
    #if current_user.id != favorite.user.id
      #redirect_to root_path
    #else
      #favorite.destroy
      #flash[:success] = "１件のお気に入りを削除しました"
    #end
  end

  private

  def set_shop
    @shop = Shop.find(params[:shop_id])
  end
  def favorite_params
    params.permit(:shop_id)
  end
end
