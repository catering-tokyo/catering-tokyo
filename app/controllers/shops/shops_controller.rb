class Shops::ShopsController < ApplicationController
  def show
  	@shop = Shop.find(params[:id])

  end

  def edit
  	@shop = Shop.find(params[:id])
  	#if @shop.id != current_shop.id
  			#redirect_to shops_shop_path(current_shop)
  			#end
  end

  def update
		@shop = Shop.find(params[:id])
    if @shop.update(shop_params)
    	#shop_genre_ids→ 仮のカラム
       shop_params[:shop_genre_ids].each do | a |
          genres = @shop.genres.pluck(:shop_genre_id)
          unless genres.include?(a.to_i)
            genre = Genre.new(shop_genre_id: a)
            genre.shop_id = @shop.id
            genre.save
          end
        end
          redirect_to shops_shop_path(@shop.id)
    else
       render 'edit'
    end
  end

  private
    def shop_params
      	params.require(:shop).permit(:email,:encrypted_password,:reset_password_token,:reset_password_sent_at,:remember_created_at,:name,:phonenumber,:address,:shop_image_id,:postal_code,:shop_genre_id,:open_time,:close_time,:lunch_limit,:dinner_limit,:latitude,:longitude,shop_genre_ids: [])
    end
end