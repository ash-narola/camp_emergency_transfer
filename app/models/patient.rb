class Patient < ApplicationRecord
  enum gender: [:male, :female, :other]
  #
  ##Associations
  #
  has_many(
    :medication_orders,
    dependent: :destroy
  )

  has_many(
    :treatments,
    dependent: :destroy
  )

  has_many :chronic_diagnoses, -> { where(diagnosis_type: 0)}, class_name: 'Diagnosis', as: :diagnosable
  has_many :diagnoses, -> { where(diagnosis_type: 1)}, class_name: 'Diagnosis', as: :diagnosable

  has_many(
    :diagnostic_procedures,
    dependent: :destroy
  )

  has_many(
    :allergies,
    dependent: :destroy
  )

  belongs_to(
    :facility
  )

end
