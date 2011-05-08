require 'test_helper'

class BusinessunitsControllerTest < ActionController::TestCase
  setup do
    @businessunit = businessunits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:businessunits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create businessunit" do
    assert_difference('Businessunit.count') do
      post :create, :businessunit => @businessunit.attributes
    end

    assert_redirected_to businessunit_path(assigns(:businessunit))
  end

  test "should show businessunit" do
    get :show, :id => @businessunit.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @businessunit.to_param
    assert_response :success
  end

  test "should update businessunit" do
    put :update, :id => @businessunit.to_param, :businessunit => @businessunit.attributes
    assert_redirected_to businessunit_path(assigns(:businessunit))
  end

  test "should destroy businessunit" do
    assert_difference('Businessunit.count', -1) do
      delete :destroy, :id => @businessunit.to_param
    end

    assert_redirected_to businessunits_path
  end
end
