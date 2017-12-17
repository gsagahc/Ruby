require 'test_helper'

class ContasPagarControllerTest < ActionController::TestCase
  setup do
    @contas_pagar = contas_pagar(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contas_pagar)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contas_pagar" do
    assert_difference('ContasPagar.count') do
      post :create, contas_pagar: { data: @contas_pagar.data, data_pago: @contas_pagar.data_pago, id_cliente: @contas_pagar.id_cliente, obs: @contas_pagar.obs, valor: @contas_pagar.valor, vencimento: @contas_pagar.vencimento }
    end

    assert_redirected_to contas_pagar_path(assigns(:contas_pagar))
  end

  test "should show contas_pagar" do
    get :show, id: @contas_pagar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contas_pagar
    assert_response :success
  end

  test "should update contas_pagar" do
    patch :update, id: @contas_pagar, contas_pagar: { data: @contas_pagar.data, data_pago: @contas_pagar.data_pago, id_cliente: @contas_pagar.id_cliente, obs: @contas_pagar.obs, valor: @contas_pagar.valor, vencimento: @contas_pagar.vencimento }
    assert_redirected_to contas_pagar_path(assigns(:contas_pagar))
  end

  test "should destroy contas_pagar" do
    assert_difference('ContasPagar.count', -1) do
      delete :destroy, id: @contas_pagar
    end

    assert_redirected_to contas_pagar_index_path
  end
end
