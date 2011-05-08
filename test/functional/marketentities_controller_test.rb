require 'test_helper'

class MarketentitiesControllerTest < ActionController::TestCase
  setup do
    @marketentity = marketentities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:marketentities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create marketentity" do
    assert_difference('Marketentity.count') do
      post :create, :marketentity => @marketentity.attributes
    end

    assert_redirected_to marketentity_path(assigns(:marketentity))
  end

  test "should show marketentity" do
    get :show, :id => @marketentity.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @marketentity.to_param
    assert_response :success
  end

  test "should update marketentity" do
    put :update, :id => @marketentity.to_param, :marketentity => @marketentity.attributes
    assert_redirected_to marketentity_path(assigns(:marketentity))
  end

  test "should destroy marketentity" do
    assert_difference('Marketentity.count', -1) do
      delete :destroy, :id => @marketentity.to_param
    end

    assert_redirected_to marketentities_path
  end
end
