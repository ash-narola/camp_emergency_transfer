# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Allergy, type: :model do
  it { is_expected.to belong_to(:patient) }  
end
