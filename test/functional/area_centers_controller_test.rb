require 'test_helper'

class AreaCentersControllerTest < ActionController::TestCase
  setup do
    @area_center = area_centers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:area_centers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create area_center" do
    assert_difference('AreaCenter.count') do
      post :create, area_center: { extension: @area_center.extension, name: @area_center.name, phone: @area_center.phone, specification: @area_center.specification }
    end

    assert_redirected_to area_center_path(assigns(:area_center))
  end

  test "should show area_center" do
    get :show, id: @area_center
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @area_center
    assert_response :success
  end

  test "should update area_center" do
    put :update, id: @area_center, area_center: { extension: @area_center.extension, name: @area_center.name, phone: @area_center.phone, specification: @area_center.specification }
    assert_redirected_to area_center_path(assigns(:area_center))
  end

  test "should destroy area_center" do
    assert_difference('AreaCenter.count', -1) do
      delete :destroy, id: @area_center
    end

    assert_redirected_to area_centers_path
  end
end
