require 'rails_helper'

RSpec.describe Product, type: :model do
  # Validate associations
  it { should have_many(:carts).dependent(:destroy) }

  # Validate presence
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:ori_price) }
  it { should validate_presence_of(:sale_price) }
  it { should validate_presence_of(:image) }
  it { should validate_presence_of(:category) }

  # Validate min length
  it { should validate_length_of(:name).is_at_least(2) }
  it { should validate_length_of(:image).is_at_least(2) }
  it { should validate_length_of(:category).is_at_least(2) }

  # numeric validations
  it { should validate_numericality_of(:ori_price).is_greater_than(0) }
  it { should validate_numericality_of(:sale_price).is_greater_than(0) }
end