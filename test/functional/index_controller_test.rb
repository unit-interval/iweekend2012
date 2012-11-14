require 'test_helper'

class IndexControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get intro" do
    get :intro
    assert_response :success
  end

  test "should get agenda" do
    get :agenda
    assert_response :success
  end

  test "should get faq" do
    get :faq
    assert_response :success
  end

end
