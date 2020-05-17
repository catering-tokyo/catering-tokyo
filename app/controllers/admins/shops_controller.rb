class Admins::ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def edit
    @shop = Shop.find(params[:id])
    @shop.shop_genre_ids = @shop.genres.pluck(:shop_genre_id)
  end

  def show
    @shop = Shop.find(params[:id])
    @reviews = @shop.reviews
  end

  def update
    @shop = Shop.find(params[:id])
    old_genres = @shop.genres.pluck(:shop_genre_id)
    if @shop.update(shop_params)
      if shop_params[:shop_genre_ids].nil?
        genres = Genre.where(shop_id: @shop.id)
        genres.destroy_all
      else
        destroy_genres = old_genres - shop_params[:shop_genre_ids].map(&:to_i)
        destroy_genres.each do | destroy_genre |
          genre = Genre.find_by(shop_id: @shop.id, shop_genre_id: destroy_genre)
          genre.destroy
        end
        genres = @shop.genres.pluck(:shop_genre_id)
        shop_params[:shop_genre_ids].each do | shopg |
          unless genres.include?(shopg.to_i)
            genre = Genre.new(shop_genre_id: shopg)
            genre.shop_id = @shop.id
            genre.save
          end
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
    params.require(:shop).permit(:name, :phonenumber, :address, :shop_image, :postal_code, :open_time, :close_time, :lunch_limit, :dinner_limit,  { shop_genre_ids: [] })
  end
end
