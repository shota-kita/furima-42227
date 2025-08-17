FactoryBot.define do
  factory :item do
    item_name       { Faker::Lorem.sentence }
    explanation     { Faker::Lorem.sentence }
    category_id     { 2 }
    situation_id    { 2 }
    postage_id      { 2 }
    prefecture_id   { 2 }
    shipping_day_id { 2 }
    price           { Faker::Number.between(from: 300, to: 9_999_999) }
    association :user
    after(:build) do |message|
      message.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
