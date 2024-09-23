FactoryBot.define do
  factory :product do
    name { 'Test Product' }
    image { 'test_image.png' }
    category { 'Test Category' }
    ori_price { 100.0 }
    sale_price { 80.0 }
    description { 'This is a test product description' }
    color { 'Red' }
    is_removed { false }
  end
end
