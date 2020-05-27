class Users::UsersController < ApplicationController

  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    flash[:notice] = "ログインして下さい。未登録のユーザは登録をお願いします。" unless user_signed_in?
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to users_user_path
    else
      render "edit"
    end
  end

  def destroy
  end

  def withdraw
  end

  private
    def user_params
      params.require(:user).permit(:name, :phonenumber, :email, :address)#, :password, :password_confirmation)
    end
end
