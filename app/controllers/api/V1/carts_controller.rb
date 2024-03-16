class Api::V1::CartsController < ApplicationController
  before_action :set_cart, only: %i[show update destroy]

  # GET /reservations
  def index
    user = User.find(params[:user_id])
    @carts = user.carts.includes(:product).where(products: { is_removed: false })

    render json: @carts, include: :product
  end

  # GET /carts/1
  def show
    render json: @cart
  end

  
end