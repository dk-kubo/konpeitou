require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { address: @customer.address, birth: @customer.birth, caremanager: @customer.caremanager, demand: @customer.demand, family_situation: @customer.family_situation, fax: @customer.fax, history_of_consul: @customer.history_of_consul, home_num: @customer.home_num, household: @customer.household, insure_num: @customer.insure_num, mail: @customer.mail, name: @customer.name, name_kana: @customer.name_kana, phone_num: @customer.phone_num, postal_code: @customer.postal_code, reception_day: @customer.reception_day, sex: @customer.sex, staff_id: @customer.staff_id }
    end

    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should show customer" do
    get :show, id: @customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should update customer" do
    patch :update, id: @customer, customer: { address: @customer.address, birth: @customer.birth, caremanager: @customer.caremanager, demand: @customer.demand, family_situation: @customer.family_situation, fax: @customer.fax, history_of_consul: @customer.history_of_consul, home_num: @customer.home_num, household: @customer.household, insure_num: @customer.insure_num, mail: @customer.mail, name: @customer.name, name_kana: @customer.name_kana, phone_num: @customer.phone_num, postal_code: @customer.postal_code, reception_day: @customer.reception_day, sex: @customer.sex, staff_id: @customer.staff_id }
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end
