require 'test_helper'

class UserTwosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_two = user_twos(:one)
  end

  test "should get index" do
    get user_twos_url
    assert_response :success
  end

  test "should get new" do
    get new_user_two_url
    assert_response :success
  end

  test "should create user_two" do
    assert_difference('UserTwo.count') do
      post user_twos_url, params: { user_two: { email: @user_two.email, name: @user_two.name } }
    end

    assert_redirected_to user_two_url(UserTwo.last)
  end

  test "should show user_two" do
    get user_two_url(@user_two)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_two_url(@user_two)
    assert_response :success
  end

  test "should update user_two" do
    patch user_two_url(@user_two), params: { user_two: { email: @user_two.email, name: @user_two.name } }
    assert_redirected_to user_two_url(@user_two)
  end

  test "should destroy user_two" do
    assert_difference('UserTwo.count', -1) do
      delete user_two_url(@user_two)
    end

    assert_redirected_to user_twos_url
  end
end
