require 'test_helper'

class Shops::MessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shops_messages_index_url
    assert_response :success
  end

  test "should get show" do
    get shops_messages_show_url
    assert_response :success
  end

end
