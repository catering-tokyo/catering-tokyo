require 'test_helper'

class Shops::RoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get shops_rooms_show_url
    assert_response :success
  end

end
