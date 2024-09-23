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
        get :show, params: { id: -1 } # wrong ID
        expect(response).to have_http_status(:not_found)
        expect(JSON.parse(response.body)['error']).to eq('Landing not found')
      end
    end
  end

  describe 'POST #create' do
    context 'with valid parameters' do
      it 'creates a new landing and returns a success response' do
        post :create, params: { landing: { name: 'New Landing', image: 'image_url', category: 'Tech', offer: 10 } }
        expect(response).to have_http_status(:created)
        expect(JSON.parse(response.body)['name']).to eq('New Landing')
      end
    end

    context 'with invalid parameters' do
      it 'returns an error response' do
        post :create, params: { landing: { name: nil } } # no valid parameters
        expect(response).to have_http_status(:unprocessable_entity)
        expect(JSON.parse(response.body)['error']).to eq('Failed to create landing data')
      end
    end
  end

  describe 'DELETE #destroy' do
    context 'when the landing exists' do
      it 'deletes the landing and returns a success response' do
        expect do
          delete :destroy, params: { id: landing.id }
        end.to change(Landing, :count).by(-1)
        expect(response).to have_http_status(:ok)
        expect(JSON.parse(response.body)['message']).to eq('Landing successfully deleted')
      end
    end

    context 'when the landing does not exist' do
      it 'returns an error response' do
        delete :destroy, params: { id: -1 } # ID does not exist
        expect(response).to have_http_status(:not_found)
        expect(JSON.parse(response.body)['error']).to eq('Landing not found')
      end
    end
  end
end
