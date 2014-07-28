require 'test_helper'

class FotocopiaControllerTest < ActionController::TestCase
  setup do
    @fotocopium = fotocopia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fotocopia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fotocopium" do
    assert_difference('Fotocopium.count') do
      post :create, fotocopium: { data: @fotocopium.data, justificativa: @fotocopium.justificativa, originais: @fotocopium.originais, quantidade: @fotocopium.quantidade, titulo: @fotocopium.titulo }
    end

    assert_redirected_to fotocopium_path(assigns(:fotocopium))
  end

  test "should show fotocopium" do
    get :show, id: @fotocopium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fotocopium
    assert_response :success
  end

  test "should update fotocopium" do
    patch :update, id: @fotocopium, fotocopium: { data: @fotocopium.data, justificativa: @fotocopium.justificativa, originais: @fotocopium.originais, quantidade: @fotocopium.quantidade, titulo: @fotocopium.titulo }
    assert_redirected_to fotocopium_path(assigns(:fotocopium))
  end

  test "should destroy fotocopium" do
    assert_difference('Fotocopium.count', -1) do
      delete :destroy, id: @fotocopium
    end

    assert_redirected_to fotocopia_path
  end
end
