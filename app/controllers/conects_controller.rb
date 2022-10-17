class ConectsController < ApplicationController
  before_action :set_conect, only: %i[ show edit update destroy ]

  # GET /conects or /conects.json
  def index
    @conects = Conect.all
  end

  # GET /conects/1 or /conects/1.json
  def show
    @conects = Conect.all
    render 'index'
  end

  # GET /conects/new
  def new
    @conect = Conect.new
  end

  # GET /conects/1/edit
  def edit
  end

  # POST /conects or /conects.json
  def create
    @conect = Conect.new(conect_params)

    respond_to do |format|
      if @conect.save
        format.html { redirect_to conect_url(@conect), notice: "Conect was successfully created." }
        format.json { render :show, status: :created, location: @conect }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @conect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conects/1 or /conects/1.json
  def update
    respond_to do |format|
      if @conect.update(conect_params)
        format.html { redirect_to conect_url(@conect), notice: "Conect was successfully updated." }
        format.json { render :show, status: :ok, location: @conect }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @conect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conects/1 or /conects/1.json
  def destroy
    @conect.destroy

    respond_to do |format|
      format.html { redirect_to conects_url, notice: "Conect was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conect
      @conect = Conect.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def conect_params
      params.require(:conect).permit(:name)
    end
end
