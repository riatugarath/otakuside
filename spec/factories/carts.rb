FactoryBot.define do
  factory :cart do
    quantity { 1 }
    size { "M" }
    association :user
    association :product
  end
end