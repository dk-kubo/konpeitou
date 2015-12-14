require 'test_helper'

class StaffsControllerTest < ActionController::TestCase
  setup do
    @staff = staffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:staffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staff" do
    assert_difference('Staff.count') do
      post :create, staff: { address: @staff.address, age: @staff.age, birth: @staff.birth, home_num: @staff.home_num, mail: @staff.mail, name: @staff.name, name_kana: @staff.name_kana, phone_num: @staff.phone_num, photo: @staff.photo, postal_code: @staff.postal_code, role: @staff.role, sex: @staff.sex, status: @staff.status }
    end

    assert_redirected_to staff_path(assigns(:staff))
  end

  test "should show staff" do
    get :show, id: @staff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staff
    assert_response :success
  end

  test "should update staff" do
    patch :update, id: @staff, staff: { address: @staff.address, age: @staff.age, birth: @staff.birth, home_num: @staff.home_num, mail: @staff.mail, name: @staff.name, name_kana: @staff.name_kana, phone_num: @staff.phone_num, photo: @staff.photo, postal_code: @staff.postal_code, role: @staff.role, sex: @staff.sex, status: @staff.status }
    assert_redirected_to staff_path(assigns(:staff))
  end

  test "should destroy staff" do
    assert_difference('Staff.count', -1) do
      delete :destroy, id: @staff
    end

    assert_redirected_to staffs_path
  end
end
