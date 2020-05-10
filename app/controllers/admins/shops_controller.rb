class Admins::ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def update
    @shop = Shop.find(params[:id])
    if @shop.update(shop_params)
       shop_params[:shop_genre_ids].each do | kiri |
          # binding.pry
          genres = @shop.genres.pluck(:shop_genre_id)
          unless genres.include?(kiri.to_i)
            genre = Genre.new(shop_genre_id: kiri)
            genre.shop_id = @shop.id
            genre.save
          end
        end
          redirect_to admins_shop_path
    else
       render 'edit'
    end
  end

  def destroy
      @shop = Shop.find(params[:id])
      @shop.destroy
      redirect_to admins_shops_path, notice: "successfully delete shop!"
  end

  private
  def shop_params
    params.require(:shop).permit(:name, :phonenumber, :address, :shop_image, :postal_code, :open_time, :close_time, :lunch_limit, :dinner_limit,  shop_genre_ids: [])
  end
end
