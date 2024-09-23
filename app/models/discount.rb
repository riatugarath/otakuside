class Discount < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2 }
  validates :offer_price, numericality: { greater_than: 0 }
  validates :normal_price, numericality: { greater_than: 0 }
  validates :percentage, numericality: { greater_than: 0 }
  validates :current_price, numericality: { greater_than: 0 }
  validates :image, presence: true, length: { minimum: 2 }
  validates :category, presence: true, length: { minimum: 2 }
end
