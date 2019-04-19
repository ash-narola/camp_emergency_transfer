class MedicationOrder < ApplicationRecord
  enum unit: [:mg]
  enum route: [:po, :im, :sc]
  #
  ##Associations
  #
  belongs_to :patient

  belongs_to :order_frequency

  def order_summary
    "#{name} #{dosage} #{route} #{order_frequency.value}"
  end
end
