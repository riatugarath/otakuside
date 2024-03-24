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

  def update
    if @landing.update(landing_params)
      render json: @landing, status: :ok
    else
      render json: { errors: @landing.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @landing = Landing.find(params[:id])
    render json: @landing
  end

  private

  def product_params
    params.require(:landing).permit(:name, :image, :category)
  end
end