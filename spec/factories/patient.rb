FactoryGirl.define do
  factory :patient do
    first_name { Faker::Name.first_name }
    middle_name { Faker::Name.middle_name }
    last_name { Faker::Name.last_name }
    mr { Faker::Lorem.sentence }
    dob { Faker::Date.birthday }
    gender { Patient.genders.keys.sample }
    association :facility
  end
end
