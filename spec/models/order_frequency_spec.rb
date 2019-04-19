# frozen_string_literal: true

require 'rails_helper'

RSpec.describe OrderFrequency, type: :model do
  it { is_expected.to have_many(:medication_orders) }
end
