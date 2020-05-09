class Users::AddressesController < ApplicationController
  before_action :authenticate_user!

  def index
    @address = Address.new
    @addresses = Address.where(user_id: current_user.id)
  end

  def create
    @address = Address.new(address_params)
    @address.user_id = current_user.id
    if  @address.save
      flash[:success] = "新しい配送先を作成しました"
      redirect_to users_addresses_path
    else
      flash.now[:danger] = "エラーです"
      @addresses = Address.where(user_id: current_user.id)
      render "index"
    end
  end

  def edit
    @address = Address.find(params[:id])
    redirect_to root_path if current_user.id != @address.user.id
  end

  def update
    @address = Address.find(params[:id])
    redirect_to root_path if current_user.id != @address.user.id
    if @address.update(address_params)
      flash[:success] = "編集が完了しました"
      redirect_to users_addresses_path
    else
      flash.now[:danger] = "エラーです"
      render 'edit'
    end
  end

  def destroy
    address = Address.find(params[:id])
    redirect_to root_path if current_user.id != address.user.id
    address.destroy
    flash[:success] = "１件の配送先を削除しました"
    redirect_to users_addresses_path
  end

  private
  def address_params
    params.require(:address).permit(:name, :postal_code, :address, :phone_number)
  end
end