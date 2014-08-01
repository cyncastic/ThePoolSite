class PoolTypesController < ApplicationController
  before_action :set_pool_type, only: [:show, :edit, :update, :destroy]

  # GET /pool_types
  def index
    @pool_types = PoolType.all
  end

  # GET /pool_types/1
  def show
  end

  # GET /pool_types/new
  def new
    @pool_type = PoolType.new
  end

  # GET /pool_types/1/edit
  def edit
  end

  # POST /pool_types
  def create
    @pool_type = PoolType.new(pool_type_params)

    if @pool_type.save
      redirect_to pool_types_url, notice: 'Pool type was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /pool_types/1
  def update
    if @pool_type.update(pool_type_params)
      redirect_to pool_types_url, notice: 'Pool type was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /pool_types/1
  def destroy
    @pool_type.destroy
    redirect_to pool_types_url, notice: 'Pool type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pool_type
      @pool_type = PoolType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pool_type_params
      params.require(:pool_type).permit(:name)
    end
end
