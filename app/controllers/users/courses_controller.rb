class Users::CoursesController < ApplicationController
  def index
    @courses = Course.where(shop_id: params[:shop_id])
    @shop = Shop.find(params[:shop_id])
  end

  def show
<<<<<<< HEAD
  	@order = Order.new
    course = Course.find_by(params[:shop_id])
=======
    @course = Course.find(params[:id])
>>>>>>> d8e6d9d14069c7060c45fbde9393d172314d0ca1
  end
end
