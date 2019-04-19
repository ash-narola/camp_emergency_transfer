FactoryGirl.define do
  factory :facility do
    name { Faker::Address.city }
  end
end
