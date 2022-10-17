class TimeItemsController < ApplicationController
  before_action :set_crime_list
  before_action :set_crime_item, only: [:show, :edit, :update, :destroy]

  # GET crime_lists/1/crime_items
  def index
    @crime_items = @crime_list.crime_items
  end

  # GET crime_lists/1/crime_items/1
  def show
  end

  # GET crime_lists/1/crime_items/new
  def new
    @crime_item = @crime_list.crime_items.build
  end

  # GET crime_lists/1/crime_items/1/edit
  def edit
  end

  # POST crime_lists/1/crime_items
  def create
    @crime_item = @crime_list.crime_items.build(crime_item_params)

    if @crime_item.save
      redirect_to(@crime_item.crime_list)
    else
      render action: 'new'
    end
  end

  # PUT crime_lists/1/crime_items/1
  def update
    if @crime_item.update_attribute(crime_item_params)
      redirect_to([@crime_item.crime_list, @crime_item], notice: 'Crime item was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE crime_lists/1/crime_items/1
  def destroy
    @crime_item.destroy

    redirect_to crime_list_crime_items_url(@crime_list)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crime_list
      @crime_list = CrimeList.find(params[:crime_list_id])
    end

    def set_crime_item
      @crime_item = @crime_list.crime_items.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def crime_item_params
      params.require(:crime_item).permit(:description, :completed, :completed_at, :crime_list_id)
    end
end
