class Users::OrdersController < ApplicationController
  def new
    @order = Order.new

  end

  def create
    @order = Order.new(order_params)
    @order.user_id = current_user.id

    if params[:back]

      redirect_to users_shops_path
    elsif @order.save
    if order_params[:radio] == "3"
      Address.create(user_id: current_user.id, 
                     name: @order.delivery_name,
                     address: @order.delivery_address,
                     phone_number: @order.phone_number,
                     postal_code: @order.postal_code )
    end
    redirect_to thanks_users_courses_path, notice: 'Task was successfully created.'
    else
      render "users/courses/show"
    end
  end

  def index
    @orders = current_user.orders
  end

  def show
    @order = Order.find(params[:id])
  end

private
  def order_params
      params.require(:order).permit(:shop_id, 
                                    :user_name, 
                                    :shop_name, 
                                    :course_name, 
                                    :delivery_address, 
                                    :payment, 
                                    :option, 
                                    :people_number, 
                                    :price, 
                                    :delivery_name, 
                                    :phone_number, 
                                    :reserve_date, 
                                    :reserve_time,
                                    :postal_code,
                                    :radio )
  end
end
