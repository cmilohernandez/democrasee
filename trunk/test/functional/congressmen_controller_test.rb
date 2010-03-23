require 'test_helper'

class CongressmenControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:congressmen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create congressman" do
    assert_difference('Congressman.count') do
      post :create, :congressman => { }
    end

    assert_redirected_to congressman_path(assigns(:congressman))
  end

  test "should show congressman" do
    get :show, :id => congressmen(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => congressmen(:one).to_param
    assert_response :success
  end

  test "should update congressman" do
    put :update, :id => congressmen(:one).to_param, :congressman => { }
    assert_redirected_to congressman_path(assigns(:congressman))
  end

  test "should destroy congressman" do
    assert_difference('Congressman.count', -1) do
      delete :destroy, :id => congressmen(:one).to_param
    end

    assert_redirected_to congressmen_path
  end
end
