require 'test_helper'

class RecaudacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recaudacion = recaudacions(:one)
  end

  test "should get index" do
    get recaudacions_url
    assert_response :success
  end

  test "should get new" do
    get new_recaudacion_url
    assert_response :success
  end

  test "should create recaudacion" do
    assert_difference('Recaudacion.count') do
      post recaudacions_url, params: { recaudacion: { fechar: @recaudacion.fechar, horar: @recaudacion.horar, monedafr: @recaudacion.monedafr, nromaquinar: @recaudacion.nromaquinar, rellenofin: @recaudacion.rellenofin, rellenoini: @recaudacion.rellenoini, totalfr: @recaudacion.totalfr, totalr: @recaudacion.totalr, valorr: @recaudacion.valorr } }
    end

    assert_redirected_to recaudacion_url(Recaudacion.last)
  end

  test "should show recaudacion" do
    get recaudacion_url(@recaudacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_recaudacion_url(@recaudacion)
    assert_response :success
  end

  test "should update recaudacion" do
    patch recaudacion_url(@recaudacion), params: { recaudacion: { fechar: @recaudacion.fechar, horar: @recaudacion.horar, monedafr: @recaudacion.monedafr, nromaquinar: @recaudacion.nromaquinar, rellenofin: @recaudacion.rellenofin, rellenoini: @recaudacion.rellenoini, totalfr: @recaudacion.totalfr, totalr: @recaudacion.totalr, valorr: @recaudacion.valorr } }
    assert_redirected_to recaudacion_url(@recaudacion)
  end

  test "should destroy recaudacion" do
    assert_difference('Recaudacion.count', -1) do
      delete recaudacion_url(@recaudacion)
    end

    assert_redirected_to recaudacions_url
  end
end
