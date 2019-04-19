class Admission < ApplicationRecord

  #
  ##Associations
  #
  belongs_to :patient

  has_many(
    :symptoms,
    dependent: :destroy
  )

  has_many(
    :observations,
    dependent: :destroy
  )

  has_many :diagnoses, -> { where(diagnosis_type: 1)}, class_name: 'Diagnosis', as: :diagnosable

end
