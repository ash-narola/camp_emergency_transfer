# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Diagnosis, type: :model do
  it { is_expected.to belong_to(:diagnosable) }

  describe ".described_code" do
    let!(:patient) { FactoryGirl.create(:patient) }
    let!(:diagnosis) { FactoryGirl.create(:diagnosis, diagnosable: patient) }
    it "gets described code" do
      s = "#{diagnosis.description} (#{diagnosis.code})"
      expect(diagnosis.described_code).to eq s
    end
  end
end
