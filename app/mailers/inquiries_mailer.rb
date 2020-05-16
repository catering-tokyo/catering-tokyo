class InquiriesMailer < ApplicationMailer

  def admin_reply(shop,inquiry) #メソッドに対して引数を設定
    @shop = shop #ショップー情報
    @inquiry = inquiry
    mail to: @shop.email, subject: '【Catering Tokyo】 お問い合わせありがとうございます'
  end

  def admin_replied(shop,inquiry)
    @shop = shop #ショップー情報
    @inquiry = inquiry
    mail to: @shop.email, subject: '【Catering Tokyo】 お問い合わせの件について'
  end
end
