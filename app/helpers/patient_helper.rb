module PatientHelper
  def patient_treatments(patient)
    treatments = patient.treatments.pluck(:description, :necessity)
    treatments.each_with_object([]) { |e, r| r << e.join(' ') }.join(', ')
  end

  def patient_allergies(patient)
    patient.allergies.pluck(:description).join(', ')
  end

  def patient_chronic_conditions(patient)
    to_sentence(patient.chronic_diagnoses, 'described_code')
  end

  def patient_medications_orders(patient)
    to_sentence(patient.medication_orders, 'order_summary')
  end

  def patient_diagnostic_procedures(patient)
    to_sentence(patient.diagnostic_procedures, 'diagnostic_procedure_summary')
  end
end
