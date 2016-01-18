require 'test_helper'

class JoursControllerTest < ActionController::TestCase
  setup do
    @jour = jours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jour" do
    assert_difference('Jour.count') do
      post :create, jour: {  }
    end

    assert_redirected_to jour_path(assigns(:jour))
  end

  test "should show jour" do
    get :show, id: @jour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jour
    assert_response :success
  end

  test "should update jour" do
    patch :update, id: @jour, jour: {  }
    assert_redirected_to jour_path(assigns(:jour))
  end

  test "should destroy jour" do
    assert_difference('Jour.count', -1) do
      delete :destroy, id: @jour
    end

    assert_redirected_to jours_path
  end
end
