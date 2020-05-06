class Users::AddressesController < ApplicationController
  def index
    @address = Address.new
    @addresses = Address.where(id: params[:id])
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end