class MedicationOrder < ApplicationRecord
  enum unit: [:mg]
  enum route: [:po, :im, :sc]
  #
  ##Associations
  #
  belongs_to :patient

  belongs_to :order_frequency
end
