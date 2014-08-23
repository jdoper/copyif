class LoginController < ApplicationController
  def index
  end

  def new
  end

  def create
  	usuario = Usuario.find_by matricula: params[:matricula], senha: params[:senha]
  	if usuario
      session[:user_id] = usuario.id
      $globalTeste = usuario
      redirect_to controller:"servico", action:"index", notice: 'Usuario autenticado.'
  	else
      redirect_to root_url
      flash[:alert] = 'Matricula ou senha invalidos.'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'Usuario deslogado.'
    redirect_to root_url
  end

end
