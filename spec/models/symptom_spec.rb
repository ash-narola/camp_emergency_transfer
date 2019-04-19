# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Symptom, type: :model do
  it { is_expected.to belong_to(:admission) }
end
