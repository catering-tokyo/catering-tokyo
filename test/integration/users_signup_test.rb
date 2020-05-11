require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get new_user_registration_path
    assert_no_difference 'User.count' do
      post user_registration_path, params: { user: { name:  "",
														      									 address: "",
														      									 phonenumber: "",
						                                         email: "",
						                                         password:              "",
						                                         password_confirmation: "" } }
    end
    assert_template 'devise/users/registrations/new'
    assert_select "li", text: "Emailを入力してください"
    assert_select "li", text: "Passwordを入力してください"
    assert_select "li", text: "Nameを入力してください"
    assert_select "li", text: "Phonenumberを入力してください"
    assert_select "li", text: "Addressを入力してください"

  end

  test "valid signup information" do
    get new_user_registration_path
    assert_difference 'User.count', 1 do
      post user_registration_path, params: { user: { name:  "sasuke",
														      									 address: "忍里",
														      									 phonenumber: "05012345678",
						                                         email: "sa@su",
						                                         password:              "password",
						                                         password_confirmation: "password" } }
    end
    assert_redirected_to root_path

  end
end
