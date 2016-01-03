require 'test_helper'

class ReductionOptionsControllerTest < ActionController::TestCase
  setup do
    @reduction_option = reduction_options(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reduction_options)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reduction_option" do
    assert_difference('ReductionOption.count') do
      post :create, reduction_option: { carbon_impact: @reduction_option.carbon_impact, title: @reduction_option.title }
    end

    assert_redirected_to reduction_option_path(assigns(:reduction_option))
  end

  test "should show reduction_option" do
    get :show, id: @reduction_option
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reduction_option
    assert_response :success
  end

  test "should update reduction_option" do
    patch :update, id: @reduction_option, reduction_option: { carbon_impact: @reduction_option.carbon_impact, title: @reduction_option.title }
    assert_redirected_to reduction_option_path(assigns(:reduction_option))
  end

  test "should destroy reduction_option" do
    assert_difference('ReductionOption.count', -1) do
      delete :destroy, id: @reduction_option
    end

    assert_redirected_to reduction_options_path
  end
end
