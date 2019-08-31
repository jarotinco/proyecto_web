require 'test_helper'

class AperturaMonedasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apertura_moneda = apertura_monedas(:one)
  end

  test "should get index" do
    get apertura_monedas_url
    assert_response :success
  end

  test "should get new" do
    get new_apertura_moneda_url
    assert_response :success
  end

  test "should create apertura_moneda" do
    assert_difference('AperturaMoneda.count') do
      post apertura_monedas_url, params: { apertura_moneda: { fecham: @apertura_moneda.fecham, horam: @apertura_moneda.horam, monedaf: @apertura_moneda.monedaf, nromaquinam: @apertura_moneda.nromaquinam, totalfm: @apertura_moneda.totalfm, totalm: @apertura_moneda.totalm, valorm: @apertura_moneda.valorm } }
    end

    assert_redirected_to apertura_moneda_url(AperturaMoneda.last)
  end

  test "should show apertura_moneda" do
    get apertura_moneda_url(@apertura_moneda)
    assert_response :success
  end

  test "should get edit" do
    get edit_apertura_moneda_url(@apertura_moneda)
    assert_response :success
  end

  test "should update apertura_moneda" do
    patch apertura_moneda_url(@apertura_moneda), params: { apertura_moneda: { fecham: @apertura_moneda.fecham, horam: @apertura_moneda.horam, monedaf: @apertura_moneda.monedaf, nromaquinam: @apertura_moneda.nromaquinam, totalfm: @apertura_moneda.totalfm, totalm: @apertura_moneda.totalm, valorm: @apertura_moneda.valorm } }
    assert_redirected_to apertura_moneda_url(@apertura_moneda)
  end

  test "should destroy apertura_moneda" do
    assert_difference('AperturaMoneda.count', -1) do
      delete apertura_moneda_url(@apertura_moneda)
    end

    assert_redirected_to apertura_monedas_url
  end
end
