require 'test_helper'

class CenterProgramsControllerTest < ActionController::TestCase
  setup do
    @center_program = center_programs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:center_programs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create center_program" do
    assert_difference('CenterProgram.count') do
      post :create, center_program: {  }
    end

    assert_redirected_to center_program_path(assigns(:center_program))
  end

  test "should show center_program" do
    get :show, id: @center_program
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @center_program
    assert_response :success
  end

  test "should update center_program" do
    put :update, id: @center_program, center_program: {  }
    assert_redirected_to center_program_path(assigns(:center_program))
  end

  test "should destroy center_program" do
    assert_difference('CenterProgram.count', -1) do
      delete :destroy, id: @center_program
    end

    assert_redirected_to center_programs_path
  end
end
