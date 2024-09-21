require 'rails_helper'

RSpec.describe Api::V1::CartsController, type: :controller do
  include Devise::Test::ControllerHelpers  # Include Devise helpers
  let!(:user) { create(:user) }
  let!(:product) { create(:product) }
  let!(:cart) { create(:cart, user: user, product: product) }

  before do
    sign_in user  # Simulate user login
  end

  describe "GET #index" do
    it "returns a success response with all carts for a user" do
      get :index, params: { user_id: user.id }
      expect(response).to be_successful
      json_response = JSON.parse(response.body)
      expect(json_response.length).to eq(1)
      expect(json_response.first['id']).to eq(cart.id)
    end
  end
end