# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Treatment, type: :model do
  it { is_expected.to belong_to(:patient) }
end
