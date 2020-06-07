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
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to("/")
    else
      render :edit
    end
  end


  def withdraw
  end

  def change_password
		@user = User.find(params[:id])
		redirect_to root_path if @user.id != current_user.id
	end

	def update_password
		@user = User.find(params[:id])
		if @user.id == current_user.id
			if @user.valid_password?(password_params[:old_password])	#入力された現在のパスワードが正しいか
				if password_params[:new_password].length >= 6
					if password_params[:new_password] == password_params[:new_password_confirm]
						@user.reset_password(password_params[:new_password], password_params[:new_password_confirm])
						# reset_passwordすると自動雨滴にログアウトする。ログアウトさせたくない場合はここで再ログインさせる必要あり。
						flash[:success] = 'パスワードを変更しました。変更に伴いログアウトしました。'
						redirect_to root_path
					else
						flash[:danger] = "新しいパスワードの再入力が間違ってます"
						render 'chenge_password'
					end
				else
					flash[:danger] = "パスワードは6文字以上で登録してください"
					render 'chenge_password'
				end
			else
				flash[:danger] = "パスワードが間違ってます"
				render 'chenge_password'
			end
		else
			redirect_to root_path
		end
	end

	private
	def user_params
		params.require(:user).permit(:name, :introduction, :image)
	end

	def password_params
		params.require(:user).permit(:new_password, :new_password_confirm, :old_password)
	end

end
