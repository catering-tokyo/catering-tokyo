class InquiriesMailer < ApplicationMailer

  def admin_reply(shop,inquiry) #メソッドに対して引数を設定
    @shop = shop #ショップー情報
    @inquiry = inquiry
    mail to: @shop.email, subject: '【Catering Tokyo】 お問い合わせありがとうございます'
  end
end
