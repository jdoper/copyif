class ServicoController < ApplicationController
  def index
    @u = Usuario.all
    $a = @u.find(params[:id])
    @fotocopium = Fotocopium.order(:titulo)
  end

  def order
  end

  def edit
  end

  def delete
  end
end
