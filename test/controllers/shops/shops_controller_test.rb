require 'test_helper'

class Shops::ShopsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get shops_shops_show_url
    assert_response :success
  end

  test "should get edit" do
    get shops_shops_edit_url
    assert_response :success
  end

end
