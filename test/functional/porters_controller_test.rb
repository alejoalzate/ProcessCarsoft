require 'test_helper'

class PortersControllerTest < ActionController::TestCase
  setup do
    @porter = porters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:porters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create porter" do
    assert_difference('Porter.count') do
      post :create, porter: { address: @porter.address, name: @porter.name, phone: @porter.phone, surname: @porter.surname }
    end

    assert_redirected_to porter_path(assigns(:porter))
  end

  test "should show porter" do
    get :show, id: @porter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @porter
    assert_response :success
  end

  test "should update porter" do
    put :update, id: @porter, porter: { address: @porter.address, name: @porter.name, phone: @porter.phone, surname: @porter.surname }
    assert_redirected_to porter_path(assigns(:porter))
  end

  test "should destroy porter" do
    assert_difference('Porter.count', -1) do
      delete :destroy, id: @porter
    end

    assert_redirected_to porters_path
  end
end
