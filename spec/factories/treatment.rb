FactoryGirl.define do
  factory :treatment do
    description { Faker::Lorem.paragraph(2) }
    necessity { Faker::Lorem.paragraph(2) }
    association :patient
  end
end
