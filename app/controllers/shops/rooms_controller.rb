class Shops::RoomsController < ApplicationController
	before_action :authenticate_shop!
  def show
  	@user = User.find_by(id: params[:id])
  	if @user.nil?
  		redirect_to root_path
  	else
	  	@room = Room.find_by(shop_id: current_shop.id, user_id: @user.id)
	  	if @room.nil?
	  		@room = Room.create(shop_id: current_shop.id, user_id: @user.id)
	  		@message = @room.messages
	  	else
	  	   @message = @room.messages
	  	end
	end
  end
end
