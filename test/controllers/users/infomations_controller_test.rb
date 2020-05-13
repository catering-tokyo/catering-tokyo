require 'test_helper'

class Users::InformationsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get users_informations_show_url
    assert_response :success
  end

end
