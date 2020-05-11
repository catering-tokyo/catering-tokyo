require 'test_helper'

class AddressTestTest < ActionDispatch::IntegrationTest
  include Warden::Test::Helpers		#devise使用 & IntegrationTestの場合は追加
  def setup
    @user = users(:sano)
  end

  test "address interface" do
    login_as(@user, scope: :user)
    get users_addresses_path

    # create
    # 無効な送信(create)
    assert_no_difference 'Address.count' do
      post users_addresses_path, params: { address: { name: "", address: "", phone_number: "", postal_code: "" } }
    end
    assert_not flash.empty?
    assert_select "li", text: "Postal codeを入力してください"
    assert_select "li", text: "Phone numberは不正な値です"
    assert_select "li", text: "Nameを入力してください"
    assert_select "li", text: "Phone numberを入力してください"
    assert_select "li", text: "Addressを入力してください"

    # 有効な送信(create)
    name = "TEST"
    address = "test"
    phone_number = "09033332222"
    postal_code = "1234567"
    assert_difference 'Address.count', 1 do
      post users_addresses_path, params: { address: { name: name, address: address, phone_number: phone_number, postal_code: postal_code } }
    end
    assert_redirected_to users_addresses_path
    follow_redirect!
    assert_not flash.empty?
    assert_match name, response.body
    assert_match address, response.body
    assert_match postal_code, response.body
    assert_match phone_number, response.body

    # edit
    address = @user.addresses.first
    get edit_users_address_path(address)
    assert_select "input", value: name
    assert_select "input", value: address
    assert_select "input", value: postal_code
    assert_select "input", value: phone_number

    # 無効な送信(edit)
    patch users_address_path(address), params: { address: { name: "", address: "", phone_number: "", postal_code: "" } }
    assert_not flash.empty?
    assert_select "li", text: "Postal codeを入力してください"
    assert_select "li", text: "Phone numberは不正な値です"
    assert_select "li", text: "Nameを入力してください"
    assert_select "li", text: "Phone numberを入力してください"
    assert_select "li", text: "Addressを入力してください"

    #有効な送信(edit)
    name2 = "TEST2"
    address2 = "test2"
    phone_number2 = "0003332222"
    postal_code2 = "3333000"
    patch users_address_path(address), params: { address: { name: name2, address: address2, phone_number: phone_number2, postal_code: postal_code2 } }
    assert_redirected_to users_addresses_path
    follow_redirect!
    assert_not flash.empty?
    assert_match name2, response.body
    assert_match address2, response.body
    assert_match postal_code2, response.body
    assert_match phone_number2, response.body

    # 投稿を削除する
    assert_select 'a', text: '削除'
    first_address = @user.addresses.first
    assert_difference 'Address.count', -1 do
      delete users_address_path(first_address)
    end
  end
end
