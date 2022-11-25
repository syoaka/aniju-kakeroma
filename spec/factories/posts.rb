FactoryBot.define do
  factory :post do

    title   {Faker::Commerce.product_name}
    text    {Faker::Lorem.sentence}
    area_id {Faker::Number.between(from: 2, to: 33)}
    
    association :user

    after(:build) do |post|
      post.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
    
  end
end
