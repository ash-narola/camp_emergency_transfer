FactoryGirl.define do
  factory :medication_order do
    name { Faker::Address.city }
    unit { 0 }
    dosage { Faker::Number.decimal(2) }
    route { MedicationOrder.routes.keys.sample }
    association :patient
    association :order_frequency
  end
end
