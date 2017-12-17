require 'test_helper'

class ContasReceberesControllerTest < ActionController::TestCase
  setup do
    @contas_receber = contas_receberes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contas_receberes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contas_receber" do
    assert_difference('ContasReceber.count') do
      post :create, contas_receber: { data: @contas_receber.data, data_pago: @contas_receber.data_pago, id_fornecedor: @contas_receber.id_fornecedor, obs: @contas_receber.obs, valor: @contas_receber.valor, vencimento: @contas_receber.vencimento }
    end

    assert_redirected_to contas_receber_path(assigns(:contas_receber))
  end

  test "should show contas_receber" do
    get :show, id: @contas_receber
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contas_receber
    assert_response :success
  end

  test "should update contas_receber" do
    patch :update, id: @contas_receber, contas_receber: { data: @contas_receber.data, data_pago: @contas_receber.data_pago, id_fornecedor: @contas_receber.id_fornecedor, obs: @contas_receber.obs, valor: @contas_receber.valor, vencimento: @contas_receber.vencimento }
    assert_redirected_to contas_receber_path(assigns(:contas_receber))
  end

  test "should destroy contas_receber" do
    assert_difference('ContasReceber.count', -1) do
      delete :destroy, id: @contas_receber
    end

    assert_redirected_to contas_receberes_path
  end
end
