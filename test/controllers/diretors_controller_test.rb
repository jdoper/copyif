require 'test_helper'

class DiretorsControllerTest < ActionController::TestCase
  setup do
    @diretor = diretors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diretors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diretor" do
    assert_difference('Diretor.count') do
      post :create, diretor: { diretoria: @diretor.diretoria, matricula: @diretor.matricula, nome: @diretor.nome, senha: @diretor.senha }
    end

    assert_redirected_to diretor_path(assigns(:diretor))
  end

  test "should show diretor" do
    get :show, id: @diretor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diretor
    assert_response :success
  end

  test "should update diretor" do
    patch :update, id: @diretor, diretor: { diretoria: @diretor.diretoria, matricula: @diretor.matricula, nome: @diretor.nome, senha: @diretor.senha }
    assert_redirected_to diretor_path(assigns(:diretor))
  end

  test "should destroy diretor" do
    assert_difference('Diretor.count', -1) do
      delete :destroy, id: @diretor
    end

    assert_redirected_to diretors_path
  end
end
