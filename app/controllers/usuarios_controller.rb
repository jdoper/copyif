class UsuariosController < ApplicationController
  before_action :verify_login, only: [:show, :edit, :update, :destroy, :listaUsuarios, :editarLimite, :atualizarLimite]
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]

  # GET /usuarios
  # GET /usuarios.json

  def index
    @usuarios = Usuario.all
    if params[:id] == "1"
      $id = "professor"
    else
      $id = "diretor"
    end

    $a = Usuario.find(session[:user_id])
    
  end

  def listaUsuarios
    $a = Usuario.find(session[:user_id])
    if $a.tipo == "diretor"
      @usuarios = Usuario.where("diretoria = '#{$a.diretoria}' and tipo = 'professor'")
    elsif $a.tipo == "professor" or $a.tipo == "grafica"
      @usuarios = Usuario.where("matricula = '#{$a.matricula}'")
    end
  end
  
  def editarLimite
    $a = Usuario.find(session[:user_id])
    
    if $a.tipo != "diretor" 
      redirect_to controller:"servico", action:"index"
      flash[:alert] = "Acesso Negado"
    end
  end

  def atualizarLimite
    $a = Usuario.find(session[:user_id])

    if params[:limite] == '0' || params[:limite] == nil 
      redirect_to controller:"servico", action:"index"
      flash[:alert] = "Limite invalido"
    else
      usuario = Usuario.where("diretoria = '#{$a.diretoria}' and tipo = 'professor'")
      usuario.each do |user|
        user.limite = params[:limite]
        user.save
      end
      redirect_to controller:"servico", action:"index"
      flash[:notice] = "Limite alterado"
    end
  end

  def log

  end
  # GET /usuarios/1
  # GET /usuarios/1.json
  def show
    $login = @usuario
    $m = @usuario.matricula

    
  end

  # GET /usuarios/new
  def new
    @usuario = Usuario.new
  end

  # GET /usuarios/1/edit
  def edit
  end

  # POST /usuarios
  # POST /usuarios.json
  def create
    @usuario = Usuario.new(usuario_params)

    respond_to do |format|
      if @usuario.save
        format.html { redirect_to @usuario, notice: 'Usuario foi criado com sucesso.' }
        format.json { render :show, status: :created, location: @usuario }
      else
        format.html { render :new }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuarios/1
  # PATCH/PUT /usuarios/1.json
  def update
    respond_to do |format|
      if @usuario.update(usuario_params)
        format.html { redirect_to @usuario, notice: 'Usuario foi atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @usuario }
      else
        format.html { render :edit }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarios/1
  # DELETE /usuarios/1.json
  def destroy
    @usuario.destroy
    respond_to do |format|
      format.html { redirect_to usuarios_url, notice: 'Usuario foi excluido com sucesso.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_params
      params.require(:usuario).permit(:nome, :matricula, :diretoria, :senha, :tipo)
    end
end
