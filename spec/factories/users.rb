FactoryBot.define do
  factory :user do

    email                 {Faker::Internet.free_email}
    password              {'1a' + Faker::Internet.password(mix_case: false,min_length: 6)}
    password_confirmation {password}
    name                  {Faker::Name.initials(number: 2)}
    
  end
end
