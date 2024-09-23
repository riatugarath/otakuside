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
end