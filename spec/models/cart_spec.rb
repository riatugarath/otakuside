require 'rails_helper'

RSpec.describe Cart, type: :model do
  # test the associations
  describe 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:product) }
  end
end