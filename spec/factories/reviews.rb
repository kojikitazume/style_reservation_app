FactoryBot.define do
  factory :review do
    content { 'MyText' }
    rating { 1 }
    stylist { nil }
    user { nil }
  end
end
