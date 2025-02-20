class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
end
