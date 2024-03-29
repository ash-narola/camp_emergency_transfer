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

  has_one(
    :admission
  )

  def self.search(query)
    where("first_name LIKE :search OR last_name LIKE :search OR middle_name LIKE :search", search: "%#{query}%")
  end

  def age
    now = Time.now.utc.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end

  def name
    "#{first_name} #{middle_name} #{last_name}"
  end
end
