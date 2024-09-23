FactoryBot.define do
  factory :landing do
    name { 'Test Landing' }
    image { 'image_url' }
    category { 'Tech' }
    offer { 100 }
  end
end
