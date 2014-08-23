class ServicoController < ApplicationController
  def index
    #@u = Usuario.all
    #id:$globalTeste
    #$a = @u.find(params[:id])
    $a = $globalTeste
    session[:usuario_id]

    @fotocopium = Fotocopium.order(:titulo)
  end

  def order
  end

  def edit
  end

  def delete
  end
end
