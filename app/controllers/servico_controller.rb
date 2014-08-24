class ServicoController < ApplicationController
  def index
    $a = Usuario.find(session[:user_id])
    @fotocopium = Fotocopium.order(:titulo)
  end

  def order
  end

  def edit
  end

  def delete
  end
end
