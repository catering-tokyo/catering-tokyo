class Shops::OrdersController < ApplicationController
  def index
  	@order = Order.find(params[:id])
  	@orders = @shop.orders
  end

  def show
  end

  def update
  end
end
