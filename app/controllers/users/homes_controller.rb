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
