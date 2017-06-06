require 'test_helper'

class ClasificacionPegisControllerTest < ActionController::TestCase
  setup do
    @clasificacion_pegi = clasificacion_pegis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clasificacion_pegis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clasificacion_pegi" do
    assert_difference('ClasificacionPegi.count') do
      post :create, clasificacion_pegi: @clasificacion_pegi.attributes
    end

    assert_redirected_to clasificacion_pegi_path(assigns(:clasificacion_pegi))
  end

  test "should show clasificacion_pegi" do
    get :show, id: @clasificacion_pegi.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clasificacion_pegi.to_param
    assert_response :success
  end

  test "should update clasificacion_pegi" do
    put :update, id: @clasificacion_pegi.to_param, clasificacion_pegi: @clasificacion_pegi.attributes
    assert_redirected_to clasificacion_pegi_path(assigns(:clasificacion_pegi))
  end

  test "should destroy clasificacion_pegi" do
    assert_difference('ClasificacionPegi.count', -1) do
      delete :destroy, id: @clasificacion_pegi.to_param
    end

    assert_redirected_to clasificacion_pegis_path
  end
end
