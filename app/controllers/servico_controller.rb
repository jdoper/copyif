class ServicoController < ApplicationController
  before_action :verify_login
  
  def index
    $a = Usuario.find(session[:user_id])
 
  end

  def order
  end

  def edit
  end

  def delete
  end
end
