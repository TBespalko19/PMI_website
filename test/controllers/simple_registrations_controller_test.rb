require 'test_helper'

class SimpleRegistrationsControllerTest < ActionController::TestCase
  setup do
    @simple_registration = simple_registrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:simple_registrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create simple_registration" do
    assert_difference('SimpleRegistration.count') do
      post :create, simple_registration: { city: @simple_registration.city, comment: @simple_registration.comment, company: @simple_registration.company, email: @simple_registration.email, event_id: @simple_registration.event_id, first_name: @simple_registration.first_name, last_name: @simple_registration.last_name, phone: @simple_registration.phone }
    end

    assert_redirected_to simple_registration_path(assigns(:simple_registration))
  end

  test "should show simple_registration" do
    get :show, id: @simple_registration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @simple_registration
    assert_response :success
  end

  test "should update simple_registration" do
    patch :update, id: @simple_registration, simple_registration: { city: @simple_registration.city, comment: @simple_registration.comment, company: @simple_registration.company, email: @simple_registration.email, event_id: @simple_registration.event_id, first_name: @simple_registration.first_name, last_name: @simple_registration.last_name, phone: @simple_registration.phone }
    assert_redirected_to simple_registration_path(assigns(:simple_registration))
  end

  test "should destroy simple_registration" do
    assert_difference('SimpleRegistration.count', -1) do
      delete :destroy, id: @simple_registration
    end

    assert_redirected_to simple_registrations_path
  end
end
