require 'test_helper'

class CusFamiliesControllerTest < ActionController::TestCase
  setup do
    @cus_family = cus_families(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cus_families)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cus_family" do
    assert_difference('CusFamily.count') do
      post :create, cus_family: { address: @cus_family.address, contact: @cus_family.contact, customer_id: @cus_family.customer_id, living: @cus_family.living, name: @cus_family.name, name_kana: @cus_family.name_kana, relation: @cus_family.relation }
    end

    assert_redirected_to cus_family_path(assigns(:cus_family))
  end

  test "should show cus_family" do
    get :show, id: @cus_family
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cus_family
    assert_response :success
  end

  test "should update cus_family" do
    patch :update, id: @cus_family, cus_family: { address: @cus_family.address, contact: @cus_family.contact, customer_id: @cus_family.customer_id, living: @cus_family.living, name: @cus_family.name, name_kana: @cus_family.name_kana, relation: @cus_family.relation }
    assert_redirected_to cus_family_path(assigns(:cus_family))
  end

  test "should destroy cus_family" do
    assert_difference('CusFamily.count', -1) do
      delete :destroy, id: @cus_family
    end

    assert_redirected_to cus_families_path
  end
end
