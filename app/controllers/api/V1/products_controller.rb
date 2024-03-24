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

  def create
    @product = Product.new(product_params)
    if @product.save
      render json: @product, status: :created
    else
      render json: { error: 'Failed to create product data' }, status: :unprocessable_entity
    end
  end

  def update
    if @product.update(product_params)
      render json: @product, status: :ok
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    render json: @product
  end

  private

  def product_params
    params.require(:product).permit(:name, :image, :category, :price, :description)
  end
end