class ArchivosController < ApplicationController
  before_action :set_archivo, only: [:show, :update, :destroy]

  # GET /archivos
  def index
    @archivos = Archivo.all

    render json: @archivos
  end

  # GET /archivos/1
  def show
    render json: @archivo
  end

  # POST /archivos
  def create
    @archivo = Archivo.new(archivo_params)

    if @archivo.save
      render json: @archivo, status: :created, location: @archivo
    else
      render json: @archivo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /archivos/1
  def update
    if @archivo.update(archivo_params)
      render json: @archivo
    else
      render json: @archivo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /archivos/1
  def destroy
    @archivo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_archivo
      @archivo = Archivo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def archivo_params
      params.require(:archivo).permit(:name)
    end
end
