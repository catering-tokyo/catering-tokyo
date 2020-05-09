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
  	if  @shop.update(shop_params)
			  redirect_to shops_shop_path(@shop.id)
  	else
    		render 'edit'
		end
  end

  private
    def shop_params
      	params.require(:shop).permit(:email,:encrypted_password,:reset_password_token,:reset_password_sent_at,:remember_created_at,:name,:phonenumber,:address,:shop_image_id,:postal_code,:shop_genre_id,:open_time,:close_time,:lunch_limit,:dinner_limit,:latitude,:longitude)
    end
end