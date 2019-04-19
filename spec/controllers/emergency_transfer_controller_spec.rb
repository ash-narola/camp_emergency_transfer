require 'rails_helper'

RSpec.describe EmergencyTransferController, type: :controller do

  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #show' do
    let!(:patient) { FactoryGirl.create(:patient) }
    it 'returns http success' do
      get :show, params: {id: patient.id}
      expect(response).to have_http_status(:success)
    end
  end

end
