class Users::RoomsController < ApplicationController
	before_action :authenticate_user!
  def show
  	@shop = Shop.find_by(id: params[:id])
  	if @shop.nil?
  		redirect_to root_path
  	else
	  	@room = Room.find_by(user_id: current_user.id, shop_id: @shop.id)
	  	if @room.nil?
	  		@room = Room.create(user_id: current_user.id, shop_id: @shop.id)
	  		@message = @room.messages
	  	else
	  	   @message = @room.messages
	  	end
	end
  end
end
