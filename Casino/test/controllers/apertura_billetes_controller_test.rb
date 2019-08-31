require 'test_helper'

class AperturaBilletesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apertura_billete = apertura_billetes(:one)
  end

  test "should get index" do
    get apertura_billetes_url
    assert_response :success
  end

  test "should get new" do
    get new_apertura_billete_url
    assert_response :success
  end

  test "should create apertura_billete" do
    assert_difference('AperturaBillete.count') do
      post apertura_billetes_url, params: { apertura_billete: { billetef: @apertura_billete.billetef, fechab: @apertura_billete.fechab, hora: @apertura_billete.hora, nromaquina: @apertura_billete.nromaquina, totalb: @apertura_billete.totalb, totalf: @apertura_billete.totalf, valorb: @apertura_billete.valorb } }
    end

    assert_redirected_to apertura_billete_url(AperturaBillete.last)
  end

  test "should show apertura_billete" do
    get apertura_billete_url(@apertura_billete)
    assert_response :success
  end

  test "should get edit" do
    get edit_apertura_billete_url(@apertura_billete)
    assert_response :success
  end

  test "should update apertura_billete" do
    patch apertura_billete_url(@apertura_billete), params: { apertura_billete: { billetef: @apertura_billete.billetef, fechab: @apertura_billete.fechab, hora: @apertura_billete.hora, nromaquina: @apertura_billete.nromaquina, totalb: @apertura_billete.totalb, totalf: @apertura_billete.totalf, valorb: @apertura_billete.valorb } }
    assert_redirected_to apertura_billete_url(@apertura_billete)
  end

  test "should destroy apertura_billete" do
    assert_difference('AperturaBillete.count', -1) do
      delete apertura_billete_url(@apertura_billete)
    end

    assert_redirected_to apertura_billetes_url
  end
end
