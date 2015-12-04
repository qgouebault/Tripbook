require 'test_helper'

class TravelLogsControllerTest < ActionController::TestCase
  setup do
    @travel_log = travel_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:travel_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create travel_log" do
    assert_difference('TravelLog.count') do
      post :create, travel_log: { description: @travel_log.description, title: @travel_log.title }
    end

    assert_redirected_to travel_log_path(assigns(:travel_log))
  end

  test "should show travel_log" do
    get :show, id: @travel_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @travel_log
    assert_response :success
  end

  test "should update travel_log" do
    patch :update, id: @travel_log, travel_log: { description: @travel_log.description, title: @travel_log.title }
    assert_redirected_to travel_log_path(assigns(:travel_log))
  end

  test "should destroy travel_log" do
    assert_difference('TravelLog.count', -1) do
      delete :destroy, id: @travel_log
    end

    assert_redirected_to travel_logs_path
  end
end
