# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MedicationOrder, type: :model do
  it { is_expected.to belong_to(:patient) }
  it { is_expected.to belong_to(:order_frequency) }

  describe ".order_summary" do
    order = [1, 2, 3, 4, 5]
    let!(:patient) { FactoryGirl.create(:patient) }
    let!(:order_frequency) { FactoryGirl.create(:order_frequency, value: order.sample) }
    let!(:medication_order) { FactoryGirl.create(:medication_order, patient: patient, order_frequency: order_frequency) }
    it "gets order summary" do
      s = "#{medication_order.name} #{medication_order.dosage} #{medication_order.route} #{medication_order.order_frequency.value}"
      expect(medication_order.order_summary).to eq s
    end
  end
end
