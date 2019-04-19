FactoryGirl.define do
  factory :diagnosis do
    coding_system { Faker::Lorem.word }
    code { Faker::Lorem.word }
    description { Faker::Lorem.paragraph }
    association :diagnosable, :patient
  end
end
