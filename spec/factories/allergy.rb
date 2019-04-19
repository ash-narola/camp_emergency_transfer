FactoryGirl.define do
  factory :allergy do
    description { Faker::Lorem.paragraph }
    association :patient
  end
end
