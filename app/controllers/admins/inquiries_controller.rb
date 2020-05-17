class Admins::InquiriesController < ApplicationController
  def index
    if params[:support] == "shop_true"
      @inquiries = Inquiry.where(user_id: nil, checked: true)
    elsif params[:support] == "shop_false"
      @inquiries = Inquiry.where(user_id: nil, checked: false)
    elsif params[:support] == "user_true"
      @inquiries = Inquiry.where(shop_id: nil, checked: true)
    elsif params[:support] == "user_false"
      @inquiries = Inquiry.where(shop_id: nil, checked: false)
    else
      @inquiries = Inquiry.all
    end
  end


  def show
    @inquiry = Inquiry.find(params[:id])
  end


  def new
  end

  def edit
    @inquiry = Inquiry.find(params[:id])
  end

  def update
    inquiry = Inquiry.find(params[:id]) #inquiry_mailer.rbの引数を指定
    inquiry.checked = true
    inquiry.update(inquiry_params)
    InquiriesMailer.admin_replied(inquiry.shop, inquiry).deliver
    redirect_to admins_inquiry_path(inquiry)
  end

  private
  def inquiry_params
    params.require(:inquiry).permit(:shop_id, :user_id, :title, :body, :reply)
  end
end
