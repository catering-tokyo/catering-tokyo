require 'test_helper'

class Shops::CoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shops_courses_index_url
    assert_response :success
  end

  test "should get show" do
    get shops_courses_show_url
    assert_response :success
  end

  test "should get new" do
    get shops_courses_new_url
    assert_response :success
  end

  test "should get edit" do
    get shops_courses_edit_url
    assert_response :success
  end

end
