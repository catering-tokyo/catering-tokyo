class Users::HomesController < ApplicationController
  def top
    shop_genre = ShopGenre.all
  end

  def about
  end

  def search
    @search_params = shop_search_params
    @shops = Shop.search(@search_params)
  end

end

  def terms
  end

  private
  def user_search_params
    params.fetch(:search, {}).permit(:name, :gender, :birthday_from, :birthday_to, :prefecture_id)
  end
end

