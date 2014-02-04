require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get hod" do
    get :hod
    assert_response :success
  end

  test "should get hm" do
    get :hm
    assert_response :success
  end

  test "should get lc" do
    get :lc
    assert_response :success
  end

  test "should get of" do
    get :of
    assert_response :success
  end

end
