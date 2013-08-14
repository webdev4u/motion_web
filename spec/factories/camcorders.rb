# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :camcorder do
    thread { rand(100000) }
    name { Faker::Name.first_name }
    description { Faker::Lorem.words(6) }
  end
end
