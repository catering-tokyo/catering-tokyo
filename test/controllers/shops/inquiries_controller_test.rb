require 'test_helper'

class Shops::InquiriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shops_inquiries_index_url
    assert_response :success
  end

  test "should get new" do
    get shops_inquiries_new_url
    assert_response :success
  end

  test "should get show" do
    get shops_inquiries_show_url
    assert_response :success
  end

end
