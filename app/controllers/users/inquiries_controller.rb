class Users::InquiriesController < ApplicationController
  def index
  	@inquiries = current_user.inquiries
  end

  def new
  	@inquiry = Inquiry.new
  end


  def create
    @inquiry = Inquiry.new(inquiry_params)
    @inquiry.user_id = current_user.id
    @user = current_user
    if @inquiry.save
      InquiriesMailer.admin_reply(@user,@inquiry).deliver #確認メールを送信
      redirect_to users_inquiry_path(@inquiry.id), notice: "画像を投稿しました！"
    else
      render :new
    end
  end

  def show
  	@inquiry = Inquiry.find(params[:id])
  end

  private
  def inquiry_params
    params.require(:inquiry).permit(:user_id, :title, :body)
  end
end
