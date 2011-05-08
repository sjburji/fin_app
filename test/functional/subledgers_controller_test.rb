require 'test_helper'

class SubledgersControllerTest < ActionController::TestCase
  setup do
    @subledger = subledgers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subledgers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subledger" do
    assert_difference('Subledger.count') do
      post :create, :subledger => @subledger.attributes
    end

    assert_redirected_to subledger_path(assigns(:subledger))
  end

  test "should show subledger" do
    get :show, :id => @subledger.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @subledger.to_param
    assert_response :success
  end

  test "should update subledger" do
    put :update, :id => @subledger.to_param, :subledger => @subledger.attributes
    assert_redirected_to subledger_path(assigns(:subledger))
  end

  test "should destroy subledger" do
    assert_difference('Subledger.count', -1) do
      delete :destroy, :id => @subledger.to_param
    end

    assert_redirected_to subledgers_path
  end
end
