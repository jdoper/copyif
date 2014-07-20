class FotocopiaController < ApplicationController
  before_action :set_fotocopium, only: [:show, :edit, :update, :destroy]

  # GET /fotocopia
  # GET /fotocopia.json
  def index
    @fotocopium = Fotocopium.all
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
    @fotocopium = Fotocopium.new(fotocopium_params)

    respond_to do |format|
      if @fotocopium.save
        format.html { redirect_to @fotocopium, notice: 'Fotocopium was successfully created.' }
        format.json { render :show, status: :created, location: @fotocopium }
      else
        format.html { render :new }
        format.json { render json: @fotocopium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fotocopia/1
  # PATCH/PUT /fotocopia/1.json
  def update
    respond_to do |format|
      if @fotocopium.update(fotocopium_params)
        format.html { redirect_to @fotocopium, notice: 'Fotocopium was successfully updated.' }
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
    respond_to do |format|
      format.html { redirect_to fotocopia_url, notice: 'Fotocopium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fotocopium
      @fotocopium = Fotocopium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fotocopium_params
      params.require(:fotocopium).permit(:titulo, :originais, :quantidade, :data, :justificativa, :matricula)
    end
end
