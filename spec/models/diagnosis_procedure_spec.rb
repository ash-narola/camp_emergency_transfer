# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DiagnosticProcedure, type: :model do
  it { is_expected.to belong_to(:patient) }

  describe ".diagnostic_procedure_summary" do
    let!(:patient) { FactoryGirl.create(:patient) }
    let!(:diagnostic_procedure) { FactoryGirl.create(:diagnostic_procedure, patient: patient) }
    it "gets described code" do
      s = "#{diagnostic_procedure.description} at #{diagnostic_procedure.created_at.strftime('%H:%M')}"
      expect(diagnostic_procedure.diagnostic_procedure_summary).to eq s
    end
  end
end
