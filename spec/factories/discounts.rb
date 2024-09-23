FactoryBot.define do
  factory :discount do
    name { 'Black Friday' }
    offer_price { 100.0 }
    normal_price { 200.0 }
    percentage { 50 }
    current_price { 100.0 }
    image { 'image_url' }
    category { 'Tech' }
  end
end
