module AdmissionHelper
  def admission_diagnoses(admission)
    to_sentence(admission.diagnoses, 'described_code')
  end

  def admission_symptoms(admission)
    to_sentence(admission.symptoms, 'description')
  end

  def admission_observations(admission)
    to_sentence(admission.observations, 'description')
  end
end
