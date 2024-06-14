class Api::V1::DiscountsController < ApplicationController
  def index
    @discounts = Discount.all
    render json: @discounts
  end
  
  def show
    @discount = Discount.find_by(id: params[:id])
    if @discount
      render json: @discount, status: :ok
    else
      render json: { error: 'Discount not found' }, status: :not_found
    end
  end
  
  def create
    @discount = Discount.new(discount_params)
    if @discount.save
      render json: @discount, status: :created
    else
      render json: { error: 'Failed to create discount data' }, status: :unprocessable_entity
    end
  end
  
  private
  
  def discount_params
    params.require(:discount).permit(:name, :image, :current_price, :offer_price, :normal_price, :percentage)
  end
end