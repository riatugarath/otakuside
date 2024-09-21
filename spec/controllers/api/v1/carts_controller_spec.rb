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

  describe "POST #create" do
    it "creates a new cart for the user" do
      expect {
        post :create, params: { cart: { quantity: 2, user_id: user.id, product_id: product.id, size: 'M' } }
      }.to change(Cart, :count).by(1)

      expect(response).to have_http_status(:created)
      json_response = JSON.parse(response.body)
      expect(json_response['quantity']).to eq(2)
    end

    it "returns an error when creation fails" do
      post :create, params: { cart: { quantity: nil, user_id: user.id, product_id: product.id, size: 'M' } }
      expect(response).to have_http_status(:unprocessable_entity)
      json_response = JSON.parse(response.body)
      expect(json_response['errors']).to include("Quantity can't be blank")
    end
  end

  describe "PATCH/PUT #update" do
    it "updates the cart's attributes" do
      put :update, params: { id: cart.id, cart: { quantity: 5 } }
      expect(response).to be_successful
      cart.reload
      expect(cart.quantity).to eq(5)
    end

    it "returns an error when update fails" do
      put :update, params: { id: cart.id, cart: { quantity: nil } }
      expect(response).to have_http_status(:unprocessable_entity)
      json_response = JSON.parse(response.body)
      expect(json_response['quantity']).to include("can't be blank")
    end
  end
end