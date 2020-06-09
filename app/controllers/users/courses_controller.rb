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

    @addresses = Address.where(user_id: current_user.id)
    @address = Address.new
  end

  def confirm
    @course = Course.find(params[:course_id])
    @order = Order.new
    @total_price = @course.price * params[:people_number].to_i

    if params[:radio_num] == "1"
      @postal_code = current_user.postal_code
      @delivery_address = current_user.address
      @delivery_name = current_user.name
      @phone_number = current_user.phonenumber

    elsif params[:radio_num] == "2"
      address = Address.find(params[:delivery_address])
      @postal_code = address.postal_code
      @delivery_address = address.address
      @delivery_name = address.name
      @phone_number = address.phone_number

    elsif params[:radio_num] == "3"
      @postal_code = params[:postal_code]
      @delivery_address = params[:address]
      @delivery_name = params[:name]
      @phone_number =params[:phone_number]

      # @sub_address = SubAddress.new(sub_address_params)
      # @sub_address = [@postal_code, @shipping_address, @delivery_name]
    end
  end

  def thanks
  end
end




