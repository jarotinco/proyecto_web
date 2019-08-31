class RecaudacionsController < ApplicationController
  before_action :set_recaudacion, only: [:show, :edit, :update, :destroy]

  # GET /recaudacions
  # GET /recaudacions.json
  def index
    @recaudacions = Recaudacion.all
  end

  # GET /recaudacions/1
  # GET /recaudacions/1.json
  def show
  end

  # GET /recaudacions/new
  def new
    @recaudacion = Recaudacion.new
  end

  # GET /recaudacions/1/edit
  def edit
  end

  # POST /recaudacions
  # POST /recaudacions.json
  def create
    @recaudacion = Recaudacion.new(recaudacion_params)

    respond_to do |format|
      if @recaudacion.save
        format.html { redirect_to @recaudacion, notice: 'Recaudacion was successfully created.' }
        format.json { render :show, status: :created, location: @recaudacion }
      else
        format.html { render :new }
        format.json { render json: @recaudacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recaudacions/1
  # PATCH/PUT /recaudacions/1.json
  def update
    respond_to do |format|
      if @recaudacion.update(recaudacion_params)
        format.html { redirect_to @recaudacion, notice: 'Recaudacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @recaudacion }
      else
        format.html { render :edit }
        format.json { render json: @recaudacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recaudacions/1
  # DELETE /recaudacions/1.json
  def destroy
    @recaudacion.destroy
    respond_to do |format|
      format.html { redirect_to recaudacions_url, notice: 'Recaudacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recaudacion
      @recaudacion = Recaudacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recaudacion_params
      params.require(:recaudacion).permit(:fechar, :horar, :nromaquinar, :rellenoini, :valorr, :monedafr, :rellenofin, :totalr, :totalfr)
    end
end
