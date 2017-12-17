class ContasReceberController < ApplicationController
  before_action :set_contas_receber, only: [:show, :edit, :update, :destroy]

  # GET /contas_receber
  # GET /contas_receber.json
  def index
    @contas_receber = ContasReceber.all
  end

  # GET /contas_receber/1
  # GET /contas_receber/1.json
  def show
  end

  # GET /contas_receber/new
  def new
    @contas_receber = ContasReceber.new
  end

  # GET /contas_receber/1/edit
  def edit
  end

  # POST /contas_receber
  # POST /contas_receber.json
  def create
    @contas_receber = ContasReceber.new(contas_receber_params)

    respond_to do |format|
      if @contas_receber.save
        format.html { redirect_to @contas_receber, notice: 'Contas receber was successfully created.' }
        format.json { render :show, status: :created, location: @contas_receber }
      else
        format.html { render :new }
        format.json { render json: @contas_receber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contas_receber/1
  # PATCH/PUT /contas_receber/1.json
  def update
    respond_to do |format|
      if @contas_receber.update(contas_receber_params)
        format.html { redirect_to @contas_receber, notice: 'Contas receber was successfully updated.' }
        format.json { render :show, status: :ok, location: @contas_receber }
      else
        format.html { render :edit }
        format.json { render json: @contas_receber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contas_receber/1
  # DELETE /contas_receber/1.json
  def destroy
    @contas_receber.destroy
    respond_to do |format|
      format.html { redirect_to contas_receber_index_url, notice: 'Contas receber was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contas_receber
      @contas_receber = ContasReceber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contas_receber_params
      params.require(:contas_receber).permit(:id_fornecedor, :valor, :data, :vencimento, :obs, :data_pago)
    end
end
