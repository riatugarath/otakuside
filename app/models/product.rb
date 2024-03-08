class Product < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2 }
  validates :description, presence: true, length: { minimum: 10 }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :image, presence: true, length: { minimum: 2 }
  validates :category, presence: true, length: { minimum: 2 }
end