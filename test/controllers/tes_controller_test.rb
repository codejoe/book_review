require 'test_helper'

class TesControllerTest < ActionController::TestCase
  setup do
    @te = tes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create te" do
    assert_difference('Te.count') do
      post :create, te: {  }
    end

    assert_redirected_to te_path(assigns(:te))
  end

  test "should show te" do
    get :show, id: @te
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @te
    assert_response :success
  end

  test "should update te" do
    patch :update, id: @te, te: {  }
    assert_redirected_to te_path(assigns(:te))
  end

  test "should destroy te" do
    assert_difference('Te.count', -1) do
      delete :destroy, id: @te
    end

    assert_redirected_to tes_path
  end
end
