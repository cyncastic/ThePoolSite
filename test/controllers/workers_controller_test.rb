require 'test_helper'

class WorkersControllerTest < ActionController::TestCase
  setup do
    @worker = workers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create worker" do
    assert_difference('Worker.count') do
      post :create, worker: { address: @worker.address, city: @worker.city, email: @worker.email, end_date: @worker.end_date, first_name: @worker.first_name, last_name: @worker.last_name, phone: @worker.phone, start_date: @worker.start_date, state: @worker.state, zip: @worker.zip }
    end

    assert_redirected_to worker_path(assigns(:worker))
  end

  test "should show worker" do
    get :show, id: @worker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @worker
    assert_response :success
  end

  test "should update worker" do
    patch :update, id: @worker, worker: { address: @worker.address, city: @worker.city, email: @worker.email, end_date: @worker.end_date, first_name: @worker.first_name, last_name: @worker.last_name, phone: @worker.phone, start_date: @worker.start_date, state: @worker.state, zip: @worker.zip }
    assert_redirected_to worker_path(assigns(:worker))
  end

  test "should destroy worker" do
    assert_difference('Worker.count', -1) do
      delete :destroy, id: @worker
    end

    assert_redirected_to workers_path
  end
end
