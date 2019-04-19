# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Patient, type: :model do
  before(:context) do
    @patient =  FactoryGirl.create(:patient)
  end

  it { is_expected.to belong_to(:facility) }
  it { is_expected.to have_many(:medication_orders) }
  it { is_expected.to have_many(:diagnoses) }
  it { is_expected.to have_many(:treatments) }
  it { is_expected.to have_many(:chronic_diagnoses) }
  it { is_expected.to have_many(:diagnostic_procedures) }
  it { is_expected.to have_many(:allergies) }

  describe ".name" do
    it "returns name" do
      s = "#{@patient.first_name} #{@patient.middle_name} #{@patient.last_name}"
      expect(@patient.name).to eq s
    end
  end

  describe ".age" do
    it "returns age" do
      now = Time.now.utc.to_date
      age = now.year - @patient.dob.year - ((now.month > @patient.dob.month || (now.month == @patient.dob.month && now.day >= @patient.dob.day)) ? 0 : 1)
      expect(@patient.age).to eq age
    end
  end

  describe "Patient search" do
    it "returns search result" do
      expect(Patient.search(@patient.first_name).count).to eq 1
    end
  end
end
