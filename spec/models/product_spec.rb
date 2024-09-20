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
end