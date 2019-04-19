# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Patient, type: :model do
  it { is_expected.to belong_to(:facility) }
  it { is_expected.to have_many(:medication_orders) }
  it { is_expected.to have_many(:diagnoses) }
  it { is_expected.to have_many(:treatments) }
  it { is_expected.to have_many(:chronic_diagnoses) }
  it { is_expected.to have_many(:diagnostic_procedures) }
  it { is_expected.to have_many(:allergies) }
end
