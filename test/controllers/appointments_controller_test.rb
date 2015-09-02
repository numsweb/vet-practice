require 'test_helper'

class AppointmentsControllerTest < ActionController::TestCase
  setup do
    @appointment = appointments(:one)
    @appointment.pet = pets(:one)
    @appointment.customer = customers(:one)
    @appointment.doctor = doctors(:one)
    @appointment.save
  end

  test "should get index" do
    #TODO need to resolve the missing child objects when appointment is created!
    #get :index
    #assert_response :success
    #assert_not_nil assigns(:appointments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create appointment" do
    assert_difference('Appointment.count') do
      post :create, appointment: {  customer_id: @appointment.customer_id, date_of_visit: @appointment.date_of_visit, doctor_id: @appointment.doctor_id,  pet_id: @appointment.pet_id, reason_for_visit: @appointment.reason_for_visit, requires_remainder: @appointment.requires_remainder}
    end

    assert_redirected_to appointment_path(assigns(:appointment))
  end

  test "should show appointment" do
    get :show, id: @appointment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @appointment
    assert_response :success
  end

  test "should update appointment" do
    patch :update, id: @appointment, appointment: { customer_id: @appointment.customer_id, date_of_visit: @appointment.date_of_visit, doctor_id: @appointment.doctor_id,  pet_id: @appointment.pet_id, reason_for_visit: @appointment.reason_for_visit, requires_remainder: @appointment.requires_remainder }
    assert_redirected_to appointment_path(assigns(:appointment))
  end

  test "should destroy appointment" do
    assert_difference('Appointment.count', -1) do
      delete :destroy, id: @appointment
    end

    assert_redirected_to appointments_path
  end
end
