class Api::V1::ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: @products
  end

  def show
    @product = Product.find_by(id: params[:id])
    if @product
      render json: @product, status: :ok
    else
      render json: { error: 'Prouct not found' }, status: :not_found
    end
  end

  
end