class CustardsController < ApplicationController
  before_action :set_custard, only: %i[ show update destroy ]

  # GET /custards
  def index
    @custards = Custard.all

    render json: @custards
  end

  # GET /custards/1
  def show
    render json: @custard
  end

  # POST /custards
  def create
    @custard = Custard.new(custard_params)

    if @custard.save
      render json: @custard, status: :created, location: @custard
    else
      render json: @custard.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /custards/1
  def update
    if @custard.update(custard_params)
      render json: @custard
    else
      render json: @custard.errors, status: :unprocessable_entity
    end
  end

  # DELETE /custards/1
  def destroy
    @custard.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custard
      @custard = Custard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def custard_params
      params.require(:custard).permit(:name, :order_id)
    end
end
