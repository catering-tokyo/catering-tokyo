class Admins::ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def new
    @shop = Shop.new
    @genres = Genre.all
  end

  def create
    @shop = Shop.new(shop_params)
    @shop_genres = Shop.all
    binding.pry
    if @shop.save
       shop_params[:shop_genre_ids].each_with_index do | genre, i |
        if i == 0
          next
        end
        genre = Genre.new(shop_genre_id: genre.to_i)
        genre.shop_id = @shop.id
        genre.save
    end
        redirect_to admins_shops_path(@shop)
    else
       render 'new'
    end
  end


  def show
  end

  def update
  end

  def destroy
  end

  private
  def shop_params
    params.require(:shop).permit(:name, :phonenumber, :address, :shop_image, :postal_code, :open_time, :close_time, :lunch_limit, :dinner_limit,  shop_genre_ids: [])
  end
end
