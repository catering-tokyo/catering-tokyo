require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
	include Warden::Test::Helpers		#devise使用 & IntegrationTestの場合は追加
	def setup
    @user = users(:sano)
  end

  test "login with invalid information" do
    get new_user_session_path
    assert_template 'devise/users/sessions/new'
    post user_session_path, params: { user: { email: "", password: "" } }
    assert_template 'devise/users/sessions/new'
    assert_not flash.empty?
    get root_path	#別のページにいったん移動する
    assert flash.empty?		#移動先のページでフラッシュメッセージが表示されていないことを確認する
  end

  test "login with valid information followed by logout" do
    get new_user_session_path
    post user_session_path, params: { user: { email:    @user.email,
                                          		password: "password" } }
    assert_redirected_to root_path
    follow_redirect!	#そのページに実際に移動する
    assert_template 'users/homes/top'
    assert_select "a[href=?]", new_user_session_path, count: 0
    assert_select "a[href=?]", destroy_user_session_path
    delete destroy_user_session_path
    assert_redirected_to root_url
    follow_redirect!
    assert_select "a[href=?]", new_user_session_path
    assert_select "a[href=?]", destroy_user_session_path, count: 0

  end
end
