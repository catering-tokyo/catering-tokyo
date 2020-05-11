class Users::OrdersController < ApplicationController
  def new
    @order = Order.new

  end

  def create
    @order = Order.new(order_params)
    @order.customer_id = current_customer.id
    if @review.user == current_user
       @review.destroy
       redirect_to users_order_thanks_path(@order.id), notice: "このお店にレビューを削除しました!"
    end
  end

  def confirm
  end

  def thanks

  end

  def index
  end

  def show
  end
end

private
  def order_params
      params.require(:order).permit(:user_id, :shop_id, :user_name, :shop_name, :course_name, :delivery_address, :payment, :option, :people_number, :price )
  end
end