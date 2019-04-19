class CiclesController < ApplicationController
  before_action :set_cicle, only: [:show, :edit, :update, :destroy]

  # GET /cicles
  # GET /cicles.json
  def index
    @cicles = Cicle.all
    @cicle = Cicle.new
  end

  # GET /cicles/1
  # GET /cicles/1.json
  def show
    @stages = @cicle.stages.all
    @stage = Stage.new
    @months = [["Enero", "Enero"], 
               ["Febrero", "Febrero"],
               ["Marzo", "Marzo"],
               ["Abril", "Abril"],
               ["Mayo", "Mayo"],
               ["Junio", "Junio"],
               ["Julio", "Julio"],
               ["Agosto", "Agosto"],
               ["Septiembre", "Septiembre"],
               ["Octubre", "Octubre"],
               ["Noviembre", "Noviembre"],
               ["Diciembre", "Diciembre"]]
  end

  # GET /cicles/new
  def new
    @cicle = Cicle.new
  end

  # GET /cicles/1/edit
  def edit
  end

  # POST /cicles
  # POST /cicles.json
  def create
    @cicle = Cicle.new(cicle_params)

    respond_to do |format|
      if @cicle.save
        format.html { redirect_to @cicle, notice: 'Cicle was successfully created.' }
        format.json { render :show, status: :created, location: @cicle }
      else
        format.html { render :new }
        format.json { render json: @cicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cicles/1
  # PATCH/PUT /cicles/1.json
  def update
    respond_to do |format|
      if @cicle.update(cicle_params)
        format.html { redirect_to @cicle, notice: 'Cicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @cicle }
      else
        format.html { render :edit }
        format.json { render json: @cicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cicles/1
  # DELETE /cicles/1.json
  def destroy
    @cicle.destroy
    respond_to do |format|
      format.html { redirect_to cicles_url, notice: 'Cicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cicle
      @cicle = Cicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cicle_params
      params.require(:cicle).permit(:name)
    end
end
