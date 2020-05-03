require 'test_helper'

class Shops::InformationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shops_informations_index_url
    assert_response :success
  end

  test "should get new" do
    get shops_informations_new_url
    assert_response :success
  end

  test "should get show" do
    get shops_informations_show_url
    assert_response :success
  end

  test "should get edit" do
    get shops_informations_edit_url
    assert_response :success
  end

end
