class CustardAdjustersController < ApplicationController
  before_action :set_custard_adjuster, only: %i[ show update destroy ]

  # GET /custard_adjusters
  def index
    @custard_adjusters = CustardAdjuster.all

    render json: @custard_adjusters
  end

  # GET /custard_adjusters/1
  def show
    render json: @custard_adjuster
  end

  # POST /custard_adjusters
  def create
    @custard_adjuster = CustardAdjuster.new(custard_adjuster_params)

    if @custard_adjuster.save
      render json: @custard_adjuster, status: :created, location: @custard_adjuster
    else
      render json: @custard_adjuster.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /custard_adjusters/1
  def update
    if @custard_adjuster.update(custard_adjuster_params)
      render json: @custard_adjuster
    else
      render json: @custard_adjuster.errors, status: :unprocessable_entity
    end
  end

  # DELETE /custard_adjusters/1
  def destroy
    @custard_adjuster.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custard_adjuster
      @custard_adjuster = CustardAdjuster.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def custard_adjuster_params
      params.require(:custard_adjuster).permit(:name, :custard_id)
    end
end
