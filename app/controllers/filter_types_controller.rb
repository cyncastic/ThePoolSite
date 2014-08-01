class FilterTypesController < ApplicationController
  before_action :set_filter_type, only: [:show, :edit, :update, :destroy]

  # GET /filter_types
  def index
    @filter_types = FilterType.all
  end

  # GET /filter_types/1
  def show
  end

  # GET /filter_types/new
  def new
    @filter_type = FilterType.new
  end

  # GET /filter_types/1/edit
  def edit
  end

  # POST /filter_types
  def create
    @filter_type = FilterType.new(filter_type_params)

    if @filter_type.save
      redirect_to @filter_type, notice: 'Filter type was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /filter_types/1
  def update
    if @filter_type.update(filter_type_params)
      redirect_to @filter_type, notice: 'Filter type was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /filter_types/1
  def destroy
    @filter_type.destroy
    redirect_to filter_types_url, notice: 'Filter type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filter_type
      @filter_type = FilterType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def filter_type_params
      params.require(:filter_type).permit(:name)
    end
end
