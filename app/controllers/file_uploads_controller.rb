class FileUploadsController < ApplicationController
  def new
    @producto = Producto.find(params[:producto_id])
  end
end
def create
  @archivo = Archivo.find(params[:archivo_id])
  @archivo.files.attach(params[:archivo][:files])
  redirect_to archivo_path(@bucket)
end
def create
  @archivo = Archivo.find(params[:archivo_id])
  @archivo.files.attach(params[:archivo][:files])
  redirect_to archivo_path(@archivo)
end