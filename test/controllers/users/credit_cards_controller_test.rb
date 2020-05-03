require 'test_helper'

class Users::CreditCardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_credit_cards_index_url
    assert_response :success
  end

  test "should get new" do
    get users_credit_cards_new_url
    assert_response :success
  end

  test "should get edit" do
    get users_credit_cards_edit_url
    assert_response :success
  end

end
