require 'test_helper'

class Users::InfomationsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get users_infomations_show_url
    assert_response :success
  end

end
