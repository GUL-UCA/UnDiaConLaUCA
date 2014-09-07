class GulucasController < ApplicationController
  before_action :set_guluca, only: [:show, :edit, :update, :destroy]

  # GET /gulucas
  # GET /gulucas.json
  def index
    @gulucas = Guluca.all
  end

  # GET /gulucas/1
  # GET /gulucas/1.json
  def show
  end

  # GET /gulucas/new
  def new
    @guluca = Guluca.new
  end

  # GET /gulucas/1/edit
  def edit
  end

  # POST /gulucas
  # POST /gulucas.json
  def create
    @guluca = Guluca.new(guluca_params)

    respond_to do |format|
      if @guluca.save
        format.html { redirect_to @guluca, notice: 'Guluca was successfully created.' }
        format.json { render :show, status: :created, location: @guluca }
      else
        format.html { render :new }
        format.json { render json: @guluca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gulucas/1
  # PATCH/PUT /gulucas/1.json
  def update
    respond_to do |format|
      if @guluca.update(guluca_params)
        format.html { redirect_to @guluca, notice: 'Guluca was successfully updated.' }
        format.json { render :show, status: :ok, location: @guluca }
      else
        format.html { render :edit }
        format.json { render json: @guluca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gulucas/1
  # DELETE /gulucas/1.json
  def destroy
    @guluca.destroy
    respond_to do |format|
      format.html { redirect_to gulucas_url, notice: 'Guluca was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guluca
      @guluca = Guluca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guluca_params
      params.require(:guluca).permit(:nombre, :correo)
    end
end
