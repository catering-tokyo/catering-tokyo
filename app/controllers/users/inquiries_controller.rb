class Users::InquiriesController < ApplicationController
  def index
  	@inquiry = Inquiry.all
  end

  def new
  	@inquiry = Inquiry.new
  end

  def create
  	@inquiry = Inquiry.new(inquiry_params)
  	@inquiry.user_id = current_user.id
  	if @inquiry.save
  		redirect_to users_inquiry_path(@inquiry.id), notice: "管理者に問い合わせ内容を送りました!"
  	else
      render :new
    end
  end

  def show
  	@inquiry = Inquiry.find(params[:id])
  end
end