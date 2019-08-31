class MusuariosController < ApplicationController
  before_action :set_musuario, only: [:show, :edit, :update, :destroy]

  # GET /musuarios
  # GET /musuarios.json
  def index
    @musuarios = Musuario.all
  end

  # GET /musuarios/1
  # GET /musuarios/1.json
  def show
  end

  # GET /musuarios/new
  def new
    @musuario = Musuario.new
  end

  # GET /musuarios/1/edit
  def edit
  end

  # POST /musuarios
  # POST /musuarios.json
  def create
    @musuario = Musuario.new(musuario_params)

    respond_to do |format|
      if @musuario.save
        format.html { redirect_to @musuario, notice: 'Musuario was successfully created.' }
        format.json { render :show, status: :created, location: @musuario }
      else
        format.html { render :new }
        format.json { render json: @musuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musuarios/1
  # PATCH/PUT /musuarios/1.json
  def update
    respond_to do |format|
      if @musuario.update(musuario_params)
        format.html { redirect_to @musuario, notice: 'Musuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @musuario }
      else
        format.html { render :edit }
        format.json { render json: @musuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musuarios/1
  # DELETE /musuarios/1.json
  def destroy
    @musuario.destroy
    respond_to do |format|
      format.html { redirect_to musuarios_url, notice: 'Musuario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musuario
      @musuario = Musuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def musuario_params
      params.require(:musuario).permit(:nombre, :apellidos, :usuario, :password, :sala, :tipo)
    end
end
