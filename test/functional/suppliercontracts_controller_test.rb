require 'test_helper'

class SuppliercontractsControllerTest < ActionController::TestCase
  setup do
    @suppliercontract = suppliercontracts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suppliercontracts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create suppliercontract" do
    assert_difference('Suppliercontract.count') do
      post :create, :suppliercontract => @suppliercontract.attributes
    end

    assert_redirected_to suppliercontract_path(assigns(:suppliercontract))
  end

  test "should show suppliercontract" do
    get :show, :id => @suppliercontract.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @suppliercontract.to_param
    assert_response :success
  end

  test "should update suppliercontract" do
    put :update, :id => @suppliercontract.to_param, :suppliercontract => @suppliercontract.attributes
    assert_redirected_to suppliercontract_path(assigns(:suppliercontract))
  end

  test "should destroy suppliercontract" do
    assert_difference('Suppliercontract.count', -1) do
      delete :destroy, :id => @suppliercontract.to_param
    end

    assert_redirected_to suppliercontracts_path
  end
end
