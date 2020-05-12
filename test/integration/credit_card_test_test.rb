require 'test_helper'

class CreditCardTestTest < ActionDispatch::IntegrationTest
	include Warden::Test::Helpers		#devise使用 & IntegrationTestの場合は追加
  def setup
    @user = users(:sano)
  end

  test "credit_card interface" do
  	login_as(@user, scope: :user)

  	# new
  	get new_users_credit_card_path

  	#無効な送信(create)
  	assert_no_difference 'CreditCard.count' do
      post users_credit_cards_path, params: { credit_card: { card_holder: "", card_number: "", expiration_date: ""} }
    end
    assert_template 'users/credit_cards/new'
    assert_not flash.empty?
    assert_select "div", text: "カード番号が正しくありません"
    assert_no_difference 'CreditCard.count' do
      post users_credit_cards_path, params: { credit_card: { card_holder: "", card_number: "3333-333333-33333", expiration_date: ""} }
    end
    assert_template 'users/credit_cards/new'
    assert_not flash.empty?
    assert_select "div", text: "エラーです"
    assert_select "li", text: "Card holderを入力してください"
    assert_select "li", text: "Card holderは不正な値です"

    #有効な送信(create)
    card_holder = "TEST TOKYO"
    card_number = "3333-1234-5678-9012"
    expiration_date = Date.today
    assert_difference 'CreditCard.count', 1 do
      post users_credit_cards_path, params: { credit_card: { card_holder: card_holder, card_number: card_number, expiration_date: expiration_date} }
    end
    assert_redirected_to users_credit_cards_path
    follow_redirect!
    assert_not flash.empty?
    assert_select "div", text: "クレジットカードを登録しました"
    assert_match card_holder, response.body
    assert_match card_number[card_number.length - 4,card_number.length], response.body
    assert_match "#{expiration_date.month}/#{expiration_date.year}", response.body

    # edit
    credit_card = @user.credit_cards.first
    get edit_users_credit_card_path(credit_card)
    assert_select "input", value: card_holder

    # 無効な送信(edit)
    patch users_credit_card_path, params: { credit_card: { card_holder: "", expiration_date: ""} }
    assert_not flash.empty?
    assert_select "div", text: "エラーです"
    assert_select "li", text: "Card holderを入力してください"
    assert_select "li", text: "Card holderは不正な値です"

    # 有効な送信(edit)
    card_holder2 = "TEST TOKYOOOOO"
    expiration_date2 = Date.today + 1.year
    patch users_credit_card_path, params: { credit_card: { card_holder: card_holder2, expiration_date: expiration_date2} }
    assert_redirected_to users_credit_cards_path
    follow_redirect!
    assert_not flash.empty?
    assert_match card_holder2, response.body
    assert_match card_number[card_number.length - 4,card_number.length], response.body
    assert_match "#{expiration_date2.month}/#{expiration_date2.year}", response.body

    # 投稿を削除する
    assert_select 'a', text: '削除'
    first_credit_card = @user.credit_cards.first
    assert_difference 'CreditCard.count', -1 do
      delete users_credit_card_path(first_credit_card)
    end
  end
end
