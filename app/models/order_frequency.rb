class OrderFrequency < ApplicationRecord
  enum unit: [:hour]
  #
  ##Associations
  #
  has_many(
    :medication_orders,
    dependent: :destroy
  )
end
