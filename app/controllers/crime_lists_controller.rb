class TimeListsController < ApplicationController
  before_action :set_crime_list, only: %i[ show edit update destroy ]

  # GET /crime_lists or /crime_lists.json
  def index
    @crime_lists = CrimeList.all
  end

  # GET /crime_lists/1 or /crime_lists/1.json
  def show
    @crime_item=CrimeItem.new
  end

  # GET /crime_lists/new
  def new
    @crime_list = CrimeList.new
  end

  # GET /crime_lists/1/edit
  def edit
  end

  # POST /crime_lists or /crime_lists.json
  def create
    @crime_list = CrimeList.new(crime_list_params)

    respond_to do |format|
      if @crime_list.save
        format.html { redirect_to crime_list_url(@crime_list), notice: "Crime list was successfully created." }
        format.json { render :show, status: :created, location: @crime_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @crime_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crime_lists/1 or /crime_lists/1.json
  def update
    respond_to do |format|
      if @crime_list.update(crime_list_params)
        format.html { redirect_to crime_list_url(@crime_list), notice: "Crime list was successfully updated." }
        format.json { render :show, status: :ok, location: @crime_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @crime_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crime_lists/1 or /crime_lists/1.json
  def destroy
    @crime_list.destroy

    respond_to do |format|
      format.html { redirect_to crime_lists_url, notice: "Crime list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crime_list
      @crime_list = CrimeList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def crime_list_params
      params.require(:crime_list).permit(:title)
    end
end