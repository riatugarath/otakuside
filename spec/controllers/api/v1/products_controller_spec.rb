require 'rails_helper'

RSpec.describe Api::V1::ProductsController, type: :controller do
  include Devise::Test::ControllerHelpers

  let!(:product) { create(:product) } # Create a product using FactoryBot

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

  describe 'POST #create' do
    context 'with valid parameters' do
      it 'creates a new product and returns a success response' do
        post :create, params: {
          product: {
            name: 'New Product',
            image: 'image_url',
            category: 'Tech',
            ori_price: 100,
            sale_price: 80,
            description: 'New product description'
          }
        }
        expect(response).to have_http_status(:created)
        expect(JSON.parse(response.body)['name']).to eq('New Product')
      end
    end

    context 'with invalid parameters' do
      it 'returns an error response when product creation fails' do
        post :create, params: { product: { name: nil } } # Parámetros inválidos
        expect(response).to have_http_status(:unprocessable_entity)
        expect(JSON.parse(response.body)['error']).to eq('Failed to create product data')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'deletes the product and returns a success response' do
      expect do
        delete :destroy, params: { id: product.id }
      end.to change(Product, :count).by(-1)
      expect(response).to have_http_status(:ok)
      expect(JSON.parse(response.body)['message']).to eq('Product deleted successfully')
    end

    it 'returns a not found error if the product does not exist' do
      delete :destroy, params: { id: -1 }
      expect(response).to have_http_status(:not_found)
      expect(JSON.parse(response.body)['error']).to eq('Product not found')
    end
  end
end
