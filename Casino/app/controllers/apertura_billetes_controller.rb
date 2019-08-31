class AperturaBilletesController < ApplicationController
  before_action :set_apertura_billete, only: [:show, :edit, :update, :destroy]

  # GET /apertura_billetes
  # GET /apertura_billetes.json
  def index
    @apertura_billetes = AperturaBillete.all
  end

  # GET /apertura_billetes/1
  # GET /apertura_billetes/1.json
  def show
  end

  # GET /apertura_billetes/new
  def new
    @apertura_billete = AperturaBillete.new
  end

  # GET /apertura_billetes/1/edit
  def edit
  end

  # POST /apertura_billetes
  # POST /apertura_billetes.json
  def create
    @apertura_billete = AperturaBillete.new(apertura_billete_params)

    respond_to do |format|
      if @apertura_billete.save
        format.html { redirect_to @apertura_billete, notice: 'Apertura billete was successfully created.' }
        format.json { render :show, status: :created, location: @apertura_billete }
      else
        format.html { render :new }
        format.json { render json: @apertura_billete.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apertura_billetes/1
  # PATCH/PUT /apertura_billetes/1.json
  def update
    respond_to do |format|
      if @apertura_billete.update(apertura_billete_params)
        format.html { redirect_to @apertura_billete, notice: 'Apertura billete was successfully updated.' }
        format.json { render :show, status: :ok, location: @apertura_billete }
      else
        format.html { render :edit }
        format.json { render json: @apertura_billete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apertura_billetes/1
  # DELETE /apertura_billetes/1.json
  def destroy
    @apertura_billete.destroy
    respond_to do |format|
      format.html { redirect_to apertura_billetes_url, notice: 'Apertura billete was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apertura_billete
      @apertura_billete = AperturaBillete.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apertura_billete_params
      params.require(:apertura_billete).permit(:fechab, :hora, :nromaquina, :valorb, :billetef, :totalb, :totalf)
    end
end
