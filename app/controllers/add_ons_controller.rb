class AddOnsController < ApplicationController
  before_action :set_add_on, only: %i[ show update destroy ]

  # GET /add_ons
  def index
    @add_ons = AddOn.all

    render json: @add_ons
  end

  # GET /add_ons/1
  def show
    render json: @add_on
  end

  # POST /add_ons
  def create
    @add_on = AddOn.new(add_on_params)

    if @add_on.save
      render json: @add_on, status: :created, location: @add_on
    else
      render json: @add_on.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /add_ons/1
  def update
    if @add_on.update(add_on_params)
      render json: @add_on
    else
      render json: @add_on.errors, status: :unprocessable_entity
    end
  end

  # PATCH /add_ons/1/book
  def book
    @add_on = AddOn.find(params[:id])
    
    if @add_on.book
      render json: @add_on
    else
      render json: @add_on.errors, status: :unprocessable_entity
    end
  end

  # DELETE /add_ons/1
  def destroy
    @add_on.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_on
      @add_on = AddOn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def add_on_params
      params.require(:add_on).permit(:name, :cost, :spots_remaining, :time_start, :time_end, :trip_id)
    end
end
