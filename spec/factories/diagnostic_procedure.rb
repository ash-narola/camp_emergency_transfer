FactoryGirl.define do
  factory :diagnostic_procedure do
    description { Faker::Lorem.paragraph }
    association :patient
  end
end
