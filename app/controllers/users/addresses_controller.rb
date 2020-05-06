class Users::AddressesController < ApplicationController
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
  end

  def update
    @address = Address.find(params[:id])
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
    address.destroy
    flash[:success] = "１件の配送先を削除しました"
    redirect_to users_addresses_path
  end

  private
  def address_params
    params.require(:address).permit(:name, :postal_code, :address, :phone_number)
  end
end