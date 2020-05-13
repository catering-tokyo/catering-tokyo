class Users::CoursesController < ApplicationController
  def index
    @courses = Course.where(shop_id: params[:shop_id])
    @shop = Shop.find(params[:shop_id])
  end

  def show
  	@course = Course.find(params[:id])
  	@order = Order.new
  end
end



private
  def order_params
      params.require(:order).permit(:user_id, :shop_id, :user_name, :shop_name, :course_name, :delivery_address, :payment, :option, :people_number, :price )
  end
end