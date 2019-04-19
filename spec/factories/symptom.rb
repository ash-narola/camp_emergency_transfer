FactoryGirl.define do
  factory :symptom do
    description { Faker::Lorem.paragraph }
    association :admission
  end
end
