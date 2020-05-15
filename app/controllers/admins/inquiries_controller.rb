class Admins::InquiriesController < ApplicationController
  def index
  end

  def new
  end

  def update
   inquiry = Inquiry.find(params[:id]) #inquiry_mailer.rbの引数を指定
   inquiry.update(inquiry_params)
   shop = inquiry.shop
   InquiryMailer.admin_replied(shop, inquiry).deliver
  end

  def show
  end

  private
  def inquiry_params
    params.require(:inquiry).permit(:shop_id, :user_id, :title, :body, :reply)
  end
end
