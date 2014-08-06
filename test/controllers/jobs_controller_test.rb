require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post :create, job: { best_day_ever: @job.best_day_ever, completed: @job.completed, customer_id: @job.customer_id, date_time: @job.date_time, job_type_id: @job.job_type_id, worker_id: @job.worker_id, worker_notes: @job.worker_notes }
    end

    assert_redirected_to job_path(assigns(:job))
  end

  test "should show job" do
    get :show, id: @job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job
    assert_response :success
  end

  test "should update job" do
    patch :update, id: @job, job: { best_day_ever: @job.best_day_ever, completed: @job.completed, customer_id: @job.customer_id, date_time: @job.date_time, job_type_id: @job.job_type_id, worker_id: @job.worker_id, worker_notes: @job.worker_notes }
    assert_redirected_to job_path(assigns(:job))
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_redirected_to jobs_path
  end
end
