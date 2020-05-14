class Users::CoursesController < ApplicationController
  def index
    @courses = Course.where(shop_id: params[:shop_id])
    @shop = Shop.find(params[:shop_id])
  end

  def show
  	@course = Course.find(params[:id])
  	@order = Order.new
    @shop = @course.shop
    @reserve_time = []
    open_time = @shop.open_time.in_time_zone
    close_time = @shop.close_time.in_time_zone - 1.hour
    close_time += 1.day if open_time > close_time
    # ⬆はこういう意味だよ
    # if open_time >= close_time
    #   close_time += 1.day
    # end
    while open_time <= close_time
      time = "#{open_time.strftime('%H:%M')}〜"
      # 11:00 ~ 12:00までにしたい場合はこちら
      # time = "#{open_time.strftime('%H:%M')}~#{(open_time + 1.hour).strftime('%H:%M')}"
      @reserve_time << time
      open_time += 30.minute
    end
    @resave_people = []
    min_people = @course.minimum_people
    max_people = @course.maximum_people
    # binding.pry
    while min_people <= max_people
      @resave_people << min_people
      min_people += 1   #min_people = min_people + 1
    end
  end

  def confirm
    @order = Order.new
    @method_of_payment = params[:payment]
  end

  def thanks
  end


private
  def order_params
      params.require(:order).permit(:user_id, :shop_id, :user_name, :shop_name, :course_name, :delivery_address, :payment, :option, :people_number, :price )
  end
end