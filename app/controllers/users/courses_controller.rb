class Users::CoursesController < ApplicationController
  def index
    @courses = Course.where("shop_id = ?", "%#{shop_id}%")
  end

  def show
  	@order = Order.new
    course = Course.find_by(params[:shop_id])
  end
end
