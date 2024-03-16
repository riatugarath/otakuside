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

  # POST /carts
  def create
    @cart = Cart.new(cart_params)
    if @cart.save
      render json: @cart, status: :created
    else
      render json: { errors: @cart.errors.full_messages }, status: :unprocessable_entity
    end
  end
  
  private

  # Use callbacks to share common setup or constraints between actions.
  def set_cart
    @cart = Cart.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def cart_params
    params.require(:cart).permit(:quantity, :user_id, :product_id)
  end
end