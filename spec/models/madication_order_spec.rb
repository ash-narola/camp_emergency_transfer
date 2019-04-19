# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MedicationOrder, type: :model do
  it { is_expected.to belong_to(:patient) }
  it { is_expected.to belong_to(:order_frequency) }
end
