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
end