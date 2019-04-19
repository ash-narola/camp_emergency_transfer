# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admission, type: :model do
  it { is_expected.to belong_to(:patient) }
  it { is_expected.to have_many(:symptoms) }
  it { is_expected.to have_many(:observations) }
  it { is_expected.to have_many(:diagnoses) }
end
