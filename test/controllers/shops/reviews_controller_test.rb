require 'test_helper'

class Shops::ReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shops_reviews_index_url
    assert_response :success
  end

end
