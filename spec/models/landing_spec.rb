require 'rails_helper'

RSpec.describe Landing, type: :model do
  # Validate presence
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:image) }
  it { should validate_presence_of(:category) }

  # Validamin length
  it { should validate_length_of(:name).is_at_least(2) }
  it { should validate_length_of(:image).is_at_least(2) }
  it { should validate_length_of(:category).is_at_least(2) }

  # Validate numeric values
  it { should validate_numericality_of(:offer).is_greater_than(0) }
end