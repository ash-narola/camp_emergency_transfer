class DiagnosticProcedure < ApplicationRecord

  #
  ##Associations
  #
  belongs_to :patient

  def diagnostic_procedure_summary
    "#{description} at #{created_at.strftime('%H:%M')}"
  end
end
