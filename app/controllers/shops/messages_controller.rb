class Shops::MessagesController < ApplicationController
  def index
  	@room = current_shop.rooms
  end

  def show
  end

  def create
  end
end
