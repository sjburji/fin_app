require 'test_helper'

class LegalentitiesControllerTest < ActionController::TestCase
  setup do
    @legalentity = legalentities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:legalentities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create legalentity" do
    assert_difference('Legalentity.count') do
      post :create, :legalentity => @legalentity.attributes
    end

    assert_redirected_to legalentity_path(assigns(:legalentity))
  end

  test "should show legalentity" do
    get :show, :id => @legalentity.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @legalentity.to_param
    assert_response :success
  end

  test "should update legalentity" do
    put :update, :id => @legalentity.to_param, :legalentity => @legalentity.attributes
    assert_redirected_to legalentity_path(assigns(:legalentity))
  end

  test "should destroy legalentity" do
    assert_difference('Legalentity.count', -1) do
      delete :destroy, :id => @legalentity.to_param
    end

    assert_redirected_to legalentities_path
  end
end
