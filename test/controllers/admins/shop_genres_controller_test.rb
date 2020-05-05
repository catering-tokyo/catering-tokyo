require 'test_helper'

class Admins::ShopGenresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_shop_genres_index_url
    assert_response :success
  end

  test "should get edit" do
    get admins_shop_genres_edit_url
    assert_response :success
  end

end
