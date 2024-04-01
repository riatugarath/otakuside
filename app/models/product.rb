class Product < ApplicationRecord
  has_many :carts, dependent: :destroy

  validates :name, presence: true, length: { minimum: 2 }
  validates :description, presence: true
  validates :ori_price, presence: true, numericality: { greater_than: 0 }
  validates :sale_price, presence: true, numericality: { greater_than: 0 }
  validates :image, presence: true, length: { minimum: 2 }
  validates :category, presence: true, length: { minimum: 2 }
end