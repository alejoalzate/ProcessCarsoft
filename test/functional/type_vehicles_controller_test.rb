require 'test_helper'

class TypeVehiclesControllerTest < ActionController::TestCase
  setup do
    @type_vehicle = type_vehicles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_vehicles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_vehicle" do
    assert_difference('TypeVehicle.count') do
      post :create, type_vehicle: { description: @type_vehicle.description, name: @type_vehicle.name }
    end

    assert_redirected_to type_vehicle_path(assigns(:type_vehicle))
  end

  test "should show type_vehicle" do
    get :show, id: @type_vehicle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_vehicle
    assert_response :success
  end

  test "should update type_vehicle" do
    put :update, id: @type_vehicle, type_vehicle: { description: @type_vehicle.description, name: @type_vehicle.name }
    assert_redirected_to type_vehicle_path(assigns(:type_vehicle))
  end

  test "should destroy type_vehicle" do
    assert_difference('TypeVehicle.count', -1) do
      delete :destroy, id: @type_vehicle
    end

    assert_redirected_to type_vehicles_path
  end
end
