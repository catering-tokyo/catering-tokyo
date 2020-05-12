class Admins::UsersController < ApplicationController
   before_action :authenticate_admin!

  	def index
		@users = User.with_deleted
	end

	def show
		@user = User.with_deleted.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			redirect_to admins_user_path(@user.id)
		else
			render 'edit'
		end
	end

	def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to admins_users_path, notice: "successfully delete user!"
  	end

	def user_restore
      @user =  User.only_deleted.find(params[:id]).restore
      redirect_to  admins_users_path
    end

	private
	def user_params
		params.require(:user).permit(:name, :phonenumber, :address, :deleted_at)
	end
end