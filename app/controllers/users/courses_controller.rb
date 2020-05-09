class Users::CoursesController < ApplicationController
  def index
    @courses = Course.where("shop_id = ?", "%#{shop_id}%")
  end

  def show
  end
end
