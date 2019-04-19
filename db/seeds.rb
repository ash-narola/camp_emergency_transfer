5.times do
  OrderFrequency.create(unit: 0, value: Faker::Number.number(1))
  Facility.create(name: Faker::Address.city)
end

diagnostic_procedures = ['Mammography', 'Echocardiography', 'Colonoscopy', 'Prothrombin Time', 'Bone Density Study', 'Magnetic Resonance Imaging', 'CT']
diagnosis = ['Coronary Artery Disease', 'Stroke', 'Lower respiratory infections', 'Chronic obstructive pulmonary disease', 'Diabetes', 'Tuberculosis', 'Cirrhosis']

15.times do
  facility = [1, 2, 3, 4, 5]
  patient = Patient.create(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    middle_name: Faker::Name.middle_name,
    gender: Patient.genders.keys.sample,
    dob: Faker::Date.birthday,
    mr: Faker::Lorem.paragraph(2),
    facility_id: facility.sample
  )

  admission = Admission.create(patient: patient)

  3.times do
    order = [1, 2, 3, 4, 5]
    patient.medication_orders.create(order_frequency_id: order.sample, unit: 0, route: MedicationOrder.routes.keys.sample, dosage: Faker::Number.decimal(2))
    patient.allergies.create(description: Faker::Lorem.paragraph)
  end

  2.times do
    patient.treatments.create(description: Faker::Lorem.paragraph(2), necessity: Faker::Lorem.paragraph(2))
    patient.diagnostic_procedures.create(description: diagnostic_procedures.sample)
    patient.chronic_diagnoses.create(coding_system: Faker::Lorem.word, code: Faker::Lorem.word, description: diagnosis.sample)
    patient.diagnoses.create(coding_system: Faker::Lorem.word, code: Faker::Lorem.word, description: diagnosis.sample)

    #adminssion records
    admission.diagnoses.create(coding_system: Faker::Lorem.word, code: Faker::Lorem.word, description: diagnosis.sample)
    admission.symptoms.create(description: Faker::Lorem.paragraph)
    admission.observations.create(description: Faker::Lorem.paragraph)
  end
end
