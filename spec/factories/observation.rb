FactoryGirl.define do
  factory :observation do
    description { Faker::Lorem.paragraph }
    association :admission
  end
end
