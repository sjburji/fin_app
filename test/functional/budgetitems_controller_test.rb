require 'test_helper'

class BudgetitemsControllerTest < ActionController::TestCase
  setup do
    @budgetitem = budgetitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:budgetitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create budgetitem" do
    assert_difference('Budgetitem.count') do
      post :create, :budgetitem => @budgetitem.attributes
    end

    assert_redirected_to budgetitem_path(assigns(:budgetitem))
  end

  test "should show budgetitem" do
    get :show, :id => @budgetitem.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @budgetitem.to_param
    assert_response :success
  end

  test "should update budgetitem" do
    put :update, :id => @budgetitem.to_param, :budgetitem => @budgetitem.attributes
    assert_redirected_to budgetitem_path(assigns(:budgetitem))
  end

  test "should destroy budgetitem" do
    assert_difference('Budgetitem.count', -1) do
      delete :destroy, :id => @budgetitem.to_param
    end

    assert_redirected_to budgetitems_path
  end
end
