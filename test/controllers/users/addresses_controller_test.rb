require 'test_helper'

class Users::AddressesControllerTest < ActionDispatch::IntegrationTest
	include Warden::Test::Helpers
  def setup
    @address = addresses(:sano_house)
    @user = users(:sano)
  end

  test "should redirect create when not logged in" do
    assert_no_difference 'Address.count' do
      post users_addresses_path, params: { address: { name: "Lorem ipsum", address: "test", phone_number: "12345678901", postal_code: "1234567" } }
    end
    assert_redirected_to new_user_session_path
  end

  test "should redirect destroy when not logged in" do
    assert_no_difference 'Address.count' do
      delete users_address_path(@address)
    end
    assert_redirected_to new_user_session_path
  end

  test "should redirect edit for wrong address" do
  	login_as(@user, scope: :user)
    address = addresses(:orochi_house)
    patch users_address_path(address), params: { address: { name: "Lorem ipsum", address: "test", phone_number: "12345678901", postal_code: "1234567" } }
    assert_redirected_to root_path
  end

  test "should redirect destroy for wrong address" do
    login_as(@user, scope: :user)
    address = addresses(:orochi_house)
    assert_no_difference 'Address.count' do
      delete users_address_path(address)
    end
    assert_redirected_to root_path
  end

end
