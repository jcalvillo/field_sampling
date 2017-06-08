require 'test_helper'

class SampleDatesControllerTest < ActionController::TestCase
  setup do
    @sample_date = sample_dates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sample_dates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sample_date" do
    assert_difference('SampleDate.count') do
      post :create, sample_date: { sample_date: @sample_date.sample_date }
    end

    assert_redirected_to sample_date_path(assigns(:sample_date))
  end

  test "should show sample_date" do
    get :show, id: @sample_date
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sample_date
    assert_response :success
  end

  test "should update sample_date" do
    patch :update, id: @sample_date, sample_date: { sample_date: @sample_date.sample_date }
    assert_redirected_to sample_date_path(assigns(:sample_date))
  end

  test "should destroy sample_date" do
    assert_difference('SampleDate.count', -1) do
      delete :destroy, id: @sample_date
    end

    assert_redirected_to sample_dates_path
  end
end
