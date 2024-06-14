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
    
  end