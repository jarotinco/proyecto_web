require 'test_helper'

class PremioManualsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @premio_manual = premio_manuals(:one)
  end

  test "should get index" do
    get premio_manuals_url
    assert_response :success
  end

  test "should get new" do
    get new_premio_manual_url
    assert_response :success
  end

  test "should create premio_manual" do
    assert_difference('PremioManual.count') do
      post premio_manuals_url, params: { premio_manual: { apematerno: @premio_manual.apematerno, apepaterno: @premio_manual.apepaterno, confinal: @premio_manual.confinal, coninicial: @premio_manual.coninicial, dni: @premio_manual.dni, fecha: @premio_manual.fecha, maquina: @premio_manual.maquina, nformato: @premio_manual.nformato, nomcliente: @premio_manual.nomcliente, valor: @premio_manual.valor } }
    end

    assert_redirected_to premio_manual_url(PremioManual.last)
  end

  test "should show premio_manual" do
    get premio_manual_url(@premio_manual)
    assert_response :success
  end

  test "should get edit" do
    get edit_premio_manual_url(@premio_manual)
    assert_response :success
  end

  test "should update premio_manual" do
    patch premio_manual_url(@premio_manual), params: { premio_manual: { apematerno: @premio_manual.apematerno, apepaterno: @premio_manual.apepaterno, confinal: @premio_manual.confinal, coninicial: @premio_manual.coninicial, dni: @premio_manual.dni, fecha: @premio_manual.fecha, maquina: @premio_manual.maquina, nformato: @premio_manual.nformato, nomcliente: @premio_manual.nomcliente, valor: @premio_manual.valor } }
    assert_redirected_to premio_manual_url(@premio_manual)
  end

  test "should destroy premio_manual" do
    assert_difference('PremioManual.count', -1) do
      delete premio_manual_url(@premio_manual)
    end

    assert_redirected_to premio_manuals_url
  end
end
