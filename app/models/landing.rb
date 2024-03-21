class Landing < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2 }
  validates :offer, numericality: { greater_than: 0 }
  validates :image, presence: true, length: { minimum: 2 }
  validates :category, presence: true, length: { minimum: 2 }
end