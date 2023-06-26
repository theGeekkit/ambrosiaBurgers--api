class AdjustersController < ApplicationController
  before_action :set_adjuster, only: %i[ show update destroy ]

  # GET /adjusters
  def index
    @adjusters = Adjuster.all

    render json: @adjusters
  end

  # GET /adjusters/1
  def show
    render json: @adjuster
  end

  # POST /adjusters
  def create
    @adjuster = Adjuster.new(adjuster_params)

    if @adjuster.save
      render json: @adjuster, status: :created, location: @adjuster
    else
      render json: @adjuster.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /adjusters/1
  def update
    if @adjuster.update(adjuster_params)
      render json: @adjuster
    else
      render json: @adjuster.errors, status: :unprocessable_entity
    end
  end

  # DELETE /adjusters/1
  def destroy
    @adjuster.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adjuster
      @adjuster = Adjuster.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def adjuster_params
      params.require(:adjuster).permit(:name, :_id, :item)
    end
end
