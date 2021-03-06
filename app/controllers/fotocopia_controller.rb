class FotocopiaController < ApplicationController
  before_action :set_fotocopium, only: [:show, :edit, :update, :destroy]
  before_action :verify_login, only: [:show, :edit, :update, :destroy, :historico, :historicoGeral]

  # GET /fotocopia
  # GET /fotocopia.json
  def index
    $a = Usuario.find(session[:user_id])
    $id = params[:id]

    $d = $a.matricula
    case $a.tipo
      when "grafica"
        if params[:id] == "1"
          @fotocopium = Fotocopium.where('check' => '0')
        elsif params[:id] == "2"
          @fotocopium = Fotocopium.where('check' => '1')
        end
      when "professor"
        if params[:id] == "1"
          @fotocopium = Fotocopium.where({ matricula: "#{$a.matricula}", check: '0' }) 
        elsif params[:id] == "2"
          @fotocopium = Fotocopium.where({ matricula: "#{$a.matricula}", check: '1' })
        end
      when "diretor"
        if params[:id] == "1"
          @fotocopium = Fotocopium.where({ matricula: "#{$a.matricula}", check: '0' }) 
        elsif params[:id] == "2"
          @fotocopium = Fotocopium.where({ matricula: "#{$a.matricula}", check: '1' })
      end
    end

  end
  
  def historico
     @fotocopium = Fotocopium.where({matricula: $m, check: '1'})
  end

  def historicoGeral
    @u = Usuario.where(diretoria: $a.diretoria).pluck(:matricula)
    @a = $a.diretoria
    @fotocopium =  Fotocopium.where(matricula: @u) 
  end

  # GET /fotocopia/1
  # GET /fotocopia/1.json
 

  def show
  
  end

  # GET /fotocopia/new
  def new
    @fotocopium = Fotocopium.new

  end

  # GET /fotocopia/1/edit
  def edit
  end

  # POST /fotocopia
  # POST /fotocopia.json
  def create
    $a = Usuario.find(session[:user_id])
    admin = Admin.find_by senha: 909090

    if $a.tipo == "diretor" and $a.qtdCopias < admin.limiteCopias
      @fotocopium = Fotocopium.new(fotocopium_params)
      $a.qtdCopias += 1
      $a.save

      respond_to do |format|
        if @fotocopium.save
          format.html { redirect_to @fotocopium, notice: 'Seu pedido foi criado' }
          format.json { render :show, status: :created, location: @fotocopium }
        else
          format.html { render :new }
          @fotocopium.matricula = @a.matricula
          format.json { render json: @fotocopium.errors, status: :unprocessable_entity }
        end
      end
      
    elsif $a.tipo == "professor"
      @fotocopium = Fotocopium.new(fotocopium_params)
      $a.qtdCopias += 1
      $a.save

      respond_to do |format|
        if @fotocopium.save
          format.html { redirect_to @fotocopium, notice: 'Seu pedido foi criado' }
          format.json { render :show, status: :created, location: @fotocopium }
        else
          format.html { render :new }
          @fotocopium.matricula = @a.matricula
          format.json { render json: @fotocopium.errors, status: :unprocessable_entity }
        end
      end

    else
      redirect_to controller:"servico", action:"index"
      flash[:alert] = 'Sua cota de copias foi excedida'
    end


  end

  # PATCH/PUT /fotocopia/1
  # PATCH/PUT /fotocopia/1.json
  def update
    respond_to do |format|
      if @fotocopium.update(fotocopium_params)
        format.html { redirect_to @fotocopium, notice: 'A fotocopia foi alterada' }
        format.json { render :show, status: :ok, location: @fotocopium }
      else
        format.html { render :edit }
        format.json { render json: @fotocopium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fotocopia/1
  # DELETE /fotocopia/1.json
  def destroy
    @fotocopium.destroy
    $a = Usuario.find(session[:user_id])
    $a.qtdCopias -= 1
    $a.save
    
    respond_to do |format|
      format.html { redirect_to fotocopia_url(id: $id), notice: 'Sua copia foi destruida' }
      format.json { head :no_content }
    end
  end

  def concluir
    @fotocopium = Fotocopium.find(params[:id])
    @fotocopium.check = 1

    if @fotocopium.save
      render json: @fotocopium
    end
  end

  def desmarcar
    @fotocopium = Fotocopium.find(params[:id])
    @fotocopium.check = 0
    
    if @fotocopium.save
      render json: @fotocopium
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fotocopium
      @fotocopium = Fotocopium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fotocopium_params
      params.require(:fotocopium).permit(:titulo, :originais, :quantidade, :data, :justificativa, :matricula, :check, :id, :link)
    end
end
