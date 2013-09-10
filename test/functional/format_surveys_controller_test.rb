require 'test_helper'

class FormatSurveysControllerTest < ActionController::TestCase
  setup do
    @format_survey = format_surveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:format_surveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create format_survey" do
    assert_difference('FormatSurvey.count') do
      post :create, format_survey: { name: @format_survey.name }
    end

    assert_redirected_to format_survey_path(assigns(:format_survey))
  end

  test "should show format_survey" do
    get :show, id: @format_survey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @format_survey
    assert_response :success
  end

  test "should update format_survey" do
    put :update, id: @format_survey, format_survey: { name: @format_survey.name }
    assert_redirected_to format_survey_path(assigns(:format_survey))
  end

  test "should destroy format_survey" do
    assert_difference('FormatSurvey.count', -1) do
      delete :destroy, id: @format_survey
    end

    assert_redirected_to format_surveys_path
  end
end
