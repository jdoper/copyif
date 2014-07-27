class DiretorsController < ApplicationController
  before_action :set_diretor, only: [:show, :edit, :update, :destroy, :login]

  # GET /diretors
  # GET /diretors.json
  def index
    @diretors = Diretor.all
  end

  # GET /diretors/1
  # GET /diretors/1.json
  def show
    $login = @diretor
  end

  # GET /diretors/new
  def new
    @diretor = Diretor.new
  end

  # GET /diretors/1/edit
  def edit
  end

  # POST /diretors
  # POST /diretors.json
  def create
    @diretor = Diretor.new(diretor_params)

    respond_to do |format|
      if @diretor.save
        format.html { redirect_to @diretor, notice: 'Diretor was successfully created.' }
        format.json { render :show, status: :created, location: @diretor }
      else
        format.html { render :new }
        format.json { render json: @diretor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diretors/1
  # PATCH/PUT /diretors/1.json
  def update
    respond_to do |format|
      if @diretor.update(diretor_params)
        format.html { redirect_to @diretor, notice: 'Diretor was successfully updated.' }
        format.json { render :show, status: :ok, location: @diretor }
      else
        format.html { render :edit }
        format.json { render json: @diretor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diretors/1
  # DELETE /diretors/1.json
  def destroy
    @diretor.destroy
    respond_to do |format|
      format.html { redirect_to diretors_url, notice: 'Diretor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diretor
      @diretor = Diretor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diretor_params
      params.require(:diretor).permit(:nome, :matricula, :senha, :diretoria)
    end
end
