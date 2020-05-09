class Users::CreditCardsController < ApplicationController
  before_action :authenticate_user!

  def index
    @credit_cards = CreditCard.where(user_id: current_user.id)

    key = ActiveSupport::KeyGenerator.new('card_number').generate_key(ENV['SECRET_KEY'], ActiveSupport::MessageEncryptor.key_len)
    @crypt = ::ActiveSupport::MessageEncryptor.new(key)
  end

  def new
    @credit_card = CreditCard.new
  end

  def create
    @credit_card = CreditCard.new(credit_card_params)
    @credit_card.user_id = current_user.id
    # 数字だけ保存できるように「-」がある場合は取り除く。
    card_numbers = credit_card_params[:card_number].scan(/(\d{4})[-]?(\d{4,6})[-]?(\d{4,5})[-]?(\d{4})?[-]?(\d{4})?/)
    card_number = card_numbers.join

    # 暗号化
    key = ActiveSupport::KeyGenerator.new('card_number').generate_key(ENV['SECRET_KEY'], ActiveSupport::MessageEncryptor.key_len)
    crypt = ActiveSupport::MessageEncryptor.new(key)

    # カード番号のフォーマットが正しいか。
    unless (card_number.to_s.length == 14 && card_number.to_s[0] == "3") || (card_number.to_s.length == 15 && card_number.to_s[0] == "3") || (card_number.to_s.length == 16 && card_number.to_s[0] == "3") || (card_number.to_s.length == 16 && card_number.to_s[0] == "4") || (card_number.to_s.length == 16 && card_number.to_s[0] == "5")
      flash.now[:danger] = "カード番号が正しくありません"
      render "new"
    else
      @credit_card.card_number = crypt.encrypt_and_sign(card_number)

      if  @credit_card.save
        flash[:success] = "クレジットカードを登録しました"
        redirect_to users_credit_cards_path
      else
        @credit_card.card_number = credit_card_params[:card_number]
        flash.now[:danger] = "エラーです"
        render "new"
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def credit_card_params
    params.require(:credit_card).permit(:card_holder, :card_number, :expiration_date)
  end
end