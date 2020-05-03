require 'test_helper'

class Shops::GenresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shops_genres_index_url
    assert_response :success
  end

  test "should get edit" do
    get shops_genres_edit_url
    assert_response :success
  end

end
