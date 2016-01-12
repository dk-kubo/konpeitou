require 'test_helper'

class CareRecordsControllerTest < ActionController::TestCase
  setup do
    @care_record = care_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:care_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create care_record" do
    assert_difference('CareRecord.count') do
      post :create, care_record: { act: @care_record.act, arrive_time: @care_record.arrive_time, bathing: @care_record.bathing, blood_pressure: @care_record.blood_pressure, contact: @care_record.contact, customer_id_id: @care_record.customer_id_id, day: @care_record.day, detachable: @care_record.detachable, dietary_intake: @care_record.dietary_intake, distance: @care_record.distance, form: @care_record.form, gait_training: @care_record.gait_training, leave_time: @care_record.leave_time, meal_size: @care_record.meal_size, medichine: @care_record.medichine, opinion: @care_record.opinion, oral_stretch: @care_record.oral_stretch, pulse: @care_record.pulse, rec_name: @care_record.rec_name, recreation: @care_record.recreation, staff_id_id: @care_record.staff_id_id, stretch: @care_record.stretch, temperature: @care_record.temperature, toilet: @care_record.toilet, training: @care_record.training, treatment: @care_record.treatment, walking: @care_record.walking, water_intake: @care_record.water_intake }
    end

    assert_redirected_to care_record_path(assigns(:care_record))
  end

  test "should show care_record" do
    get :show, id: @care_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @care_record
    assert_response :success
  end

  test "should update care_record" do
    patch :update, id: @care_record, care_record: { act: @care_record.act, arrive_time: @care_record.arrive_time, bathing: @care_record.bathing, blood_pressure: @care_record.blood_pressure, contact: @care_record.contact, customer_id_id: @care_record.customer_id_id, day: @care_record.day, detachable: @care_record.detachable, dietary_intake: @care_record.dietary_intake, distance: @care_record.distance, form: @care_record.form, gait_training: @care_record.gait_training, leave_time: @care_record.leave_time, meal_size: @care_record.meal_size, medichine: @care_record.medichine, opinion: @care_record.opinion, oral_stretch: @care_record.oral_stretch, pulse: @care_record.pulse, rec_name: @care_record.rec_name, recreation: @care_record.recreation, staff_id_id: @care_record.staff_id_id, stretch: @care_record.stretch, temperature: @care_record.temperature, toilet: @care_record.toilet, training: @care_record.training, treatment: @care_record.treatment, walking: @care_record.walking, water_intake: @care_record.water_intake }
    assert_redirected_to care_record_path(assigns(:care_record))
  end

  test "should destroy care_record" do
    assert_difference('CareRecord.count', -1) do
      delete :destroy, id: @care_record
    end

    assert_redirected_to care_records_path
  end
end
