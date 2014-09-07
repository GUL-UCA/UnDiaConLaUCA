require 'test_helper'

class GulucasControllerTest < ActionController::TestCase
  setup do
    @guluca = gulucas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gulucas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guluca" do
    assert_difference('Guluca.count') do
      post :create, guluca: { correo: @guluca.correo, nombre: @guluca.nombre }
    end

    assert_redirected_to guluca_path(assigns(:guluca))
  end

  test "should show guluca" do
    get :show, id: @guluca
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guluca
    assert_response :success
  end

  test "should update guluca" do
    patch :update, id: @guluca, guluca: { correo: @guluca.correo, nombre: @guluca.nombre }
    assert_redirected_to guluca_path(assigns(:guluca))
  end

  test "should destroy guluca" do
    assert_difference('Guluca.count', -1) do
      delete :destroy, id: @guluca
    end

    assert_redirected_to gulucas_path
  end
end
