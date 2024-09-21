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
end