require 'rails_helper'

RSpec.describe Api::V1::AppointmentsController, type: :controller do

  describe "POST /api/v1/appointments" do
    user = User.create!(email: "somename5@gmail.com", password: "pass@123", password_confirmation: "pass@123", name: "John")
    doctor = Doctor.create(name: "Spain")
    ts1 = TimeSlot.create(start_time: '09:00', end_time: '10:00', slot_date: '2020-11-11')
    ts2 = TimeSlot.create(start_time: '09:00', end_time: '10:00', slot_date: '2020-11-25')

    context "with parameters" do
      let(:valid_params) do
        {
          "appointment": {
            "user_id": user.id,
            "time_slot_id": ts1.id,
              "doctor_id": doctor.id
            }
            
        }
      end
      headers = { "CONTENT_TYPE" => "application/json" }

      before do
        post :create, as: :json, params: valid_params
      end

      it "creates a new appointment" do
        expect(response).to have_http_status :unauthorized
      end
    end
  end
end
