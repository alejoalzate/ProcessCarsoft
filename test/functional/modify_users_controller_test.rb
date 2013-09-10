require 'test_helper'

class ModifyUsersControllerTest < ActionController::TestCase
  setup do
    @modify_user = modify_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:modify_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create modify_user" do
    assert_difference('ModifyUser.count') do
      post :create, modify_user: { change: @modify_user.change, description: @modify_user.description }
    end

    assert_redirected_to modify_user_path(assigns(:modify_user))
  end

  test "should show modify_user" do
    get :show, id: @modify_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @modify_user
    assert_response :success
  end

  test "should update modify_user" do
    put :update, id: @modify_user, modify_user: { change: @modify_user.change, description: @modify_user.description }
    assert_redirected_to modify_user_path(assigns(:modify_user))
  end

  test "should destroy modify_user" do
    assert_difference('ModifyUser.count', -1) do
      delete :destroy, id: @modify_user
    end

    assert_redirected_to modify_users_path
  end
end
