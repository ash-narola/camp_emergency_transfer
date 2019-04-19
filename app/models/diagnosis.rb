class Diagnosis < ApplicationRecord

  enum diagnosis_type: ['Chronic', 'Diagnosis']
  #
  ##Associations
  #
  belongs_to :diagnosable, polymorphic: true

end
