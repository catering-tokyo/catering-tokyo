require 'test_helper'

class Users::CreditCardsControllerTest < ActionDispatch::IntegrationTest
  include Warden::Test::Helpers   #devise使用 & IntegrationTestの場合は追加
  def setup
    @user = users(:sano)
    @credit_card = credit_cards(:sano)
  end

  test "should redirect create when not logged in" do
    expiration_date = Date.today
    assert_no_difference 'CreditCard.count' do
      post users_credit_cards_path, params: { credit_card: { card_holder: "TEST", card_number: "3333-2222-3333-2222", expiration_date: expiration_date} }
    end
    assert_redirected_to new_user_session_path
  end

  test "should redirect destroy when not logged in" do
    assert_no_difference 'CreditCard.count' do
      delete users_credit_card_path(@credit_card)
    end
    assert_redirected_to new_user_session_path
  end

  test "should redirect edit for wrong address" do
    login_as(@user, scope: :user)
    credit_card = credit_cards(:orochi)
    expiration_date = Date.today
    patch users_credit_card_path(credit_card), params: { credit_card: { card_holder: "TEST", card_number: "3333-2222-3333-2222", expiration_date: expiration_date} }
    assert_redirected_to root_path
  end

  test "should redirect destroy for wrong address" do
    login_as(@user, scope: :user)
    credit_card = credit_cards(:orochi)
    assert_no_difference 'CreditCard.count' do
      delete users_credit_card_path(credit_card)
    end
    assert_redirected_to root_path
  end

end
