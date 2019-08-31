class AperturaMonedasController < ApplicationController
  before_action :set_apertura_moneda, only: [:show, :edit, :update, :destroy]

  # GET /apertura_monedas
  # GET /apertura_monedas.json
  def index
    @apertura_monedas = AperturaMoneda.all
  end

  # GET /apertura_monedas/1
  # GET /apertura_monedas/1.json
  def show
  end

  # GET /apertura_monedas/new
  def new
    @apertura_moneda = AperturaMoneda.new
  end

  # GET /apertura_monedas/1/edit
  def edit
  end

  # POST /apertura_monedas
  # POST /apertura_monedas.json
  def create
    @apertura_moneda = AperturaMoneda.new(apertura_moneda_params)

    respond_to do |format|
      if @apertura_moneda.save
        format.html { redirect_to @apertura_moneda, notice: 'Apertura moneda was successfully created.' }
        format.json { render :show, status: :created, location: @apertura_moneda }
      else
        format.html { render :new }
        format.json { render json: @apertura_moneda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apertura_monedas/1
  # PATCH/PUT /apertura_monedas/1.json
  def update
    respond_to do |format|
      if @apertura_moneda.update(apertura_moneda_params)
        format.html { redirect_to @apertura_moneda, notice: 'Apertura moneda was successfully updated.' }
        format.json { render :show, status: :ok, location: @apertura_moneda }
      else
        format.html { render :edit }
        format.json { render json: @apertura_moneda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apertura_monedas/1
  # DELETE /apertura_monedas/1.json
  def destroy
    @apertura_moneda.destroy
    respond_to do |format|
      format.html { redirect_to apertura_monedas_url, notice: 'Apertura moneda was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apertura_moneda
      @apertura_moneda = AperturaMoneda.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apertura_moneda_params
      params.require(:apertura_moneda).permit(:fecham, :horam, :nromaquinam, :valorm, :monedaf, :totalm, :totalfm)
    end
end
