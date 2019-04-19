FactoryGirl.define do
  factory :diagnostic_procedures do
    description { Faker::Lorem.paragraph }
    association :patient
  end
end
