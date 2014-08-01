require 'test_helper'

class FilterTypesControllerTest < ActionController::TestCase
  setup do
    @filter_type = filter_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:filter_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create filter_type" do
    assert_difference('FilterType.count') do
      post :create, filter_type: { name: @filter_type.name }
    end

    assert_redirected_to filter_type_path(assigns(:filter_type))
  end

  test "should show filter_type" do
    get :show, id: @filter_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @filter_type
    assert_response :success
  end

  test "should update filter_type" do
    patch :update, id: @filter_type, filter_type: { name: @filter_type.name }
    assert_redirected_to filter_type_path(assigns(:filter_type))
  end

  test "should destroy filter_type" do
    assert_difference('FilterType.count', -1) do
      delete :destroy, id: @filter_type
    end

    assert_redirected_to filter_types_path
  end
end
