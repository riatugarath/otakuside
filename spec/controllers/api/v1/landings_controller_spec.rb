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
end
