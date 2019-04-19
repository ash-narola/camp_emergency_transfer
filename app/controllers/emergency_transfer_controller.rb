class EmergencyTransferController < ApplicationController
  def index
    patients = params[:query].present? ?
                Patient.search(params[:query]) :
                Patient.all
    @patients = patients.paginate(page: params[:page], per_page: 10)
  end

  def show
    @patient = Patient.includes(:facility, :treatments, :allergies, :diagnostic_procedures, :chronic_diagnoses, :diagnoses, medication_orders: [:order_frequency], admission: [:symptoms, :diagnoses]).find_by(id: params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "show",
        layout: "application"
      end
    end
  end
end
