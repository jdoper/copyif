class ServicoController < ApplicationController
  def index
    @u = Usuario.all
    $a = @u.find(params[:id])

    #@d = Diretor.all
    #@a = 0
    #@teste = params[:matricula]
    #if @teste.size > 6
    #  @a = Usuario.find_by_matricula(params[:matricula])
    #else
    #  @a = Diretor.find_by_matricula(params[:matricula])
    #end

    @fotocopium = Fotocopium.order(:titulo)
  end

  def order
  end

  def edit
  end

  def delete
  end
end
