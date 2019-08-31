require 'test_helper'

class MusuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @musuario = musuarios(:one)
  end

  test "should get index" do
    get musuarios_url
    assert_response :success
  end

  test "should get new" do
    get new_musuario_url
    assert_response :success
  end

  test "should create musuario" do
    assert_difference('Musuario.count') do
      post musuarios_url, params: { musuario: { apellidos: @musuario.apellidos, nombre: @musuario.nombre, password: @musuario.password, sala: @musuario.sala, tipo: @musuario.tipo, usuario: @musuario.usuario } }
    end

    assert_redirected_to musuario_url(Musuario.last)
  end

  test "should show musuario" do
    get musuario_url(@musuario)
    assert_response :success
  end

  test "should get edit" do
    get edit_musuario_url(@musuario)
    assert_response :success
  end

  test "should update musuario" do
    patch musuario_url(@musuario), params: { musuario: { apellidos: @musuario.apellidos, nombre: @musuario.nombre, password: @musuario.password, sala: @musuario.sala, tipo: @musuario.tipo, usuario: @musuario.usuario } }
    assert_redirected_to musuario_url(@musuario)
  end

  test "should destroy musuario" do
    assert_difference('Musuario.count', -1) do
      delete musuario_url(@musuario)
    end

    assert_redirected_to musuarios_url
  end
end
