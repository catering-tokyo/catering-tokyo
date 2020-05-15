class Shops::InquiriesController < ApplicationController
  def index
  	@inquiries = current_shop.inquiries
  end

  def new
  	@inquiry = Inquiry.new
  end

  def create
  	@inquiry = Inquiry.new(inquiry_params)
  	@inquiry.shop_id = current_shop.id
    @shop = current_shop

  	if @inquiry.save(inquiry_params)
       InquiriesMailer.admin_reply(@shop,@inquiry).deliver #確認メールを送信
  	   redirect_to shops_inquiries_path(current_shop)
  	else
  	   render "index"
  	end
  end

  def show
  	@inquiry = Inquiry.find(params[:id])
  end

  private
  def inquiry_params
    params.require(:inquiry).permit(:shop_id, :title, :body)
  end
end
