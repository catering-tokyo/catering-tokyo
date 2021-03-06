class Shops::OrdersController < ApplicationController
  def index
  	# courses = current_shop.courses.pluck(:id)
  	# @orders = Order.where(course_id: courses)
      if params[:support] == "not_compatibled"
        @orders = Order.where(shop_id: current_shop.id, order_status: 0)
      elsif params[:support] == "during_correspondenced"
        @orders = Order.where(shop_id: current_shop.id, order_status: 1)
      elsif params[:support] == "supported"
        @orders = Order.where(shop_id: current_shop.id, order_status: 2)
      else
        @orders = current_shop.orders
      end
  end

  def show
  	@order = Order.find(params[:id])
  end

  def update
  end

  def not_compatible
    order = Order.find(params[:order_id])
    order.not_compatibled! unless order.not_compatibled?
    redirect_to shops_order_path(order), notice: '対応中に変更しました。'
  end

  def during_correspondence
    order = Order.find(params[:order_id])
    order.during_correspondenced! unless order.during_correspondenced?
    redirect_to shops_order_path(order), notice: '対応済に変更しました。'
  end

  def support
    order = Order.find(params[:order_id])
    order.supported! unless order.supported?
    redirect_to shops_order_path(order), notice: '未対応に変更しました。'
  end

  private

  def order_params
    params.require(:order).permit(:order_status)

  end

end
