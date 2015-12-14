require 'test_helper'

class CaremanagersControllerTest < ActionController::TestCase
  setup do
    @caremanager = caremanagers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caremanagers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caremanager" do
    assert_difference('Caremanager.count') do
      post :create, caremanager: { address: @caremanager.address, age: @caremanager.age, birth: @caremanager.birth, company: @caremanager.company, mail: @caremanager.mail, name: @caremanager.name, name_kana: @caremanager.name_kana, phone_num: @caremanager.phone_num, postal_code: @caremanager.postal_code, sex: @caremanager.sex, status: @caremanager.status }
    end

    assert_redirected_to caremanager_path(assigns(:caremanager))
  end

  test "should show caremanager" do
    get :show, id: @caremanager
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caremanager
    assert_response :success
  end

  test "should update caremanager" do
    patch :update, id: @caremanager, caremanager: { address: @caremanager.address, age: @caremanager.age, birth: @caremanager.birth, company: @caremanager.company, mail: @caremanager.mail, name: @caremanager.name, name_kana: @caremanager.name_kana, phone_num: @caremanager.phone_num, postal_code: @caremanager.postal_code, sex: @caremanager.sex, status: @caremanager.status }
    assert_redirected_to caremanager_path(assigns(:caremanager))
  end

  test "should destroy caremanager" do
    assert_difference('Caremanager.count', -1) do
      delete :destroy, id: @caremanager
    end

    assert_redirected_to caremanagers_path
  end
end
