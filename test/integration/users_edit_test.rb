require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:anuj)
  end

  test "unsuccessful edit" do
  	log_in_as(@user)
    get edit_user_path(@user)
    assert_template 'users/edit'
    patch user_path(@user), params: { user: {name: "", email: "foo@gmail", password:"different", password_confirmation: "password"}}
    assert_template "users/edit"
    assert_select 'div#error_explanation'
    assert_select 'div.field_with_errors'
  end

  test "successful edit with friendly forwarding" do
    get edit_user_path(@user)
  	log_in_as(@user)
  	assert_redirected_to edit_user_url(@user)
    name = "foo"
    email = "foo@bar.com"
    patch user_path(@user), params: { user: {name: name, email: email, password: "", password_confirmation: ""}}
    assert_not flash.empty?
    assert_redirected_to @user
    @user.reload
    assert_equal name, @user.name
  end
end

