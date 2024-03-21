class Api::V1::LandingsController < ApplicationController
  def index
    @landings = Landing.all
    render json: @landings
  end

  def show
    @landing = Landing.find_by(id: params[:id])
    if @landing
      render json: @landing, status: :ok
    else
      render json: { error: 'Landing not found' }, status: :not_found
    end
  end

  def create
    @landing = Landing.new(landing_params)
    if @landing.save
      render json: @landing, status: :created
    else
      render json: { error: 'Failed to create landing data' }, status: :unprocessable_entity
    end
  end
  
  private

  def product_params
    params.require(:landing).permit(:name, :image, :category, :offer)
  end
end