require 'test_helper'

class RhsControllerTest < ActionController::TestCase
  setup do
    @rh = rhs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rhs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rh" do
    assert_difference('Rh.count') do
      post :create, rh: { name: @rh.name }
    end

    assert_redirected_to rh_path(assigns(:rh))
  end

  test "should show rh" do
    get :show, id: @rh
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rh
    assert_response :success
  end

  test "should update rh" do
    put :update, id: @rh, rh: { name: @rh.name }
    assert_redirected_to rh_path(assigns(:rh))
  end

  test "should destroy rh" do
    assert_difference('Rh.count', -1) do
      delete :destroy, id: @rh
    end

    assert_redirected_to rhs_path
  end
end
