require 'rails_helper'

RSpec.describe Api::V1::LandingsController, type: :controller do
  include Devise::Test::ControllerHelpers
  let!(:landing) { create(:landing) } # Create a landing using FactoryBot

  describe 'GET #index' do
    it 'returns a success response with all landings' do
      get :index
      expect(response).to have_http_status(:ok)
      expect(JSON.parse(response.body).size).to eq(1)
    end
  end

  describe 'GET #show' do
    context 'when the landing exists' do
      it 'returns the landing and a success response' do
        get :show, params: { id: landing.id }
        expect(response).to have_http_status(:ok)
        expect(JSON.parse(response.body)['id']).to eq(landing.id)
      end
    end

    context 'when the landing does not exist' do
      it 'returns an error response' do
        get :show, params: { id: -1 } # Un ID que no existe
        expect(response).to have_http_status(:not_found)
        expect(JSON.parse(response.body)['error']).to eq('Landing not found')
      end
    end
  end
end
