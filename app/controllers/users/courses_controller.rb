class Users::CoursesController < ApplicationController
  def index
    @courses = Course.where(shop_id: params[:shop_id])
    @shop = Shop.find(params[:shop_id])
  end

  def show
    @course = Course.find(params[:id])
  end
end
