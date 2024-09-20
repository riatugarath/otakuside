require 'rails_helper'

RSpec.describe Cart, type: :model do
  # test the associations
  describe 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:product) }
  end

  # test the validations
  describe 'Validations' do
    # Validate the quantity to be present
    it { should validate_presence_of(:quantity) }

    # Validate the quantity is a integer and >= 1
    it do
      should validate_numericality_of(:quantity).
        is_greater_than_or_equal_to(1).
        only_integer
    end

    # Validate the cart has an user
    it { should belong_to(:user) }

    # Validate the cart has a product
    it { should belong_to(:product) }
  end
end