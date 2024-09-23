require 'rails_helper'

RSpec.describe Api::V1::ProductsController, type: :controller do
  include Devise::Test::ControllerHelpers

  let!(:product) { create(:product) }  # Create a product using FactoryBot

  describe 'GET #index' do
    it 'returns a success response with all products' do
      get :index
      expect(response).to have_http_status(:ok)
      expect(JSON.parse(response.body).length).to eq(1)
    end
  end

  describe 'GET #show' do
    it 'returns a success response when the product exists' do
      get :show, params: { id: product.id }
      expect(response).to have_http_status(:ok)
      expect(JSON.parse(response.body)['id']).to eq(product.id)
    end

    it 'returns a not found error when the product does not exist' do
      get :show, params: { id: -1 }
      expect(response).to have_http_status(:not_found)
      expect(JSON.parse(response.body)['error']).to eq('Product not found')
    end
  end
end