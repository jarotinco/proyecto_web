class PremioManualsController < ApplicationController
  before_action :set_premio_manual, only: [:show, :edit, :update, :destroy]

  # GET /premio_manuals
  # GET /premio_manuals.json
  def index
    @premio_manuals = PremioManual.all
  end

  # GET /premio_manuals/1
  # GET /premio_manuals/1.json
  def show
  end

  # GET /premio_manuals/new
  def new
    @premio_manual = PremioManual.new
  end

  # GET /premio_manuals/1/edit
  def edit
  end

  # POST /premio_manuals
  # POST /premio_manuals.json
  def create
    @premio_manual = PremioManual.new(premio_manual_params)

    respond_to do |format|
      if @premio_manual.save
        format.html { redirect_to @premio_manual, notice: 'Se ha creado correctamente.' }
        format.json { render :show, status: :created, location: @premio_manual }
      else
        format.html { render :new }
        format.json { render json: @premio_manual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /premio_manuals/1
  # PATCH/PUT /premio_manuals/1.json
  def update
    respond_to do |format|
      if @premio_manual.update(premio_manual_params)
        format.html { redirect_to @premio_manual, notice: 'El premio de actualizo correctamente.' }
        format.json { render :show, status: :ok, location: @premio_manual }
      else
        format.html { render :edit }
        format.json { render json: @premio_manual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /premio_manuals/1
  # DELETE /premio_manuals/1.json
  def destroy
    @premio_manual.destroy
    respond_to do |format|
      format.html { redirect_to premio_manuals_url, notice: 'Se ha eliminado correctamente' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_premio_manual
      @premio_manual = PremioManual.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def premio_manual_params
      params.require(:premio_manual).permit(:nformato, :fecha, :maquina, :valor, :coninicial, :confinal, :dni, :nomcliente, :apepaterno, :apematerno)
    end
end
