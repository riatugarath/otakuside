require 'rails_helper'

RSpec.describe Api::V1::DiscountsController, type: :controller do
  include Devise::Test::ControllerHelpers
  let!(:discount) { create(:discount) } # Create a discount using FactoryBot

  describe "GET #index" do
    it "returns a success response with all discounts" do
      get :index
      expect(response).to be_successful
      json_response = JSON.parse(response.body)
      expect(json_response.length).to eq(1) # check if there is a discount
    end
  end

  describe "GET #show" do
    context "when discount exists" do
      it "returns a success response with the discount" do
        get :show, params: { id: discount.id }
        expect(response).to be_successful
        json_response = JSON.parse(response.body)
        expect(json_response['id']).to eq(discount.id)
      end
    end

    context "when discount does not exist" do
      it "returns a not found error" do
        get :show, params: { id: 0 }
        expect(response).to have_http_status(:not_found)
        json_response = JSON.parse(response.body)
        expect(json_response['error']).to eq('Discount not found')
      end
    end
  end

  describe "POST #create" do
    context "with valid parameters" do
      it "creates a new discount and returns a success response" do
        expect {
          post :create, params: { discount: { name: 'Black Friday', offer_price: 100, normal_price: 200, percentage: 50, current_price: 100, image: 'image_url', category: 'Tech' } }
        }.to change(Discount, :count).by(1)

        expect(response).to have_http_status(:created)
        json_response = JSON.parse(response.body)
        expect(json_response['name']).to eq('Black Friday')
      end
    end

    context "with invalid parameters" do
      it "returns an error response" do
        post :create, params: { discount: { name: nil, offer_price: 100, normal_price: 200, percentage: 50, current_price: 100, image: 'image_url', category: 'Tech' } }
        expect(response).to have_http_status(:unprocessable_entity)
        json_response = JSON.parse(response.body)
        expect(json_response['error']).to eq('Failed to create discount data')
      end
    end
  end

end