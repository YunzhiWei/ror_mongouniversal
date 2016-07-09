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
      post :create, job: { company_address: @job.company_address, company_description: @job.company_description, company_industry: @job.company_industry, company_name: @job.company_name, company_property: @job.company_property, company_scale: @job.company_scale, job_datetime: @job.job_datetime, job_location: @job.job_location, job_salary: @job.job_salary, job_title: @job.job_title, source_url: @job.source_url }
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
    patch :update, id: @job, job: { company_address: @job.company_address, company_description: @job.company_description, company_industry: @job.company_industry, company_name: @job.company_name, company_property: @job.company_property, company_scale: @job.company_scale, job_datetime: @job.job_datetime, job_location: @job.job_location, job_salary: @job.job_salary, job_title: @job.job_title, source_url: @job.source_url }
    assert_redirected_to job_path(assigns(:job))
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_redirected_to jobs_path
  end
end
