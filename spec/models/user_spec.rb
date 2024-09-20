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

  # Verify Devise modules
  it 'includes Devise modules' do
    expect(User.ancestors).to include(Devise::Models::DatabaseAuthenticatable)
    expect(User.ancestors).to include(Devise::Models::Registerable)
    expect(User.ancestors).to include(Devise::Models::Recoverable)
    expect(User.ancestors).to include(Devise::Models::Rememberable)
    expect(User.ancestors).to include(Devise::Models::Validatable)
    expect(User.ancestors).to include(Devise::JWT::RevocationStrategies::JTIMatcher)
  end
end