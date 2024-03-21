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
end