require 'rails_helper'

RSpec.describe User, type: :model do
  # Devise validations
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email).case_insensitive }
  it { should validate_presence_of(:password) }

  # Custom validations
  it { should validate_presence_of(:name) }

  # Association validation
  it { should have_many(:carts).dependent(:destroy) }
end