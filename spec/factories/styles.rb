FactoryBot.define do
  factory :style do
    title { 'MyString' }
    description { 'MyText' }
    image { nil }
    trending { false }
  end
end
