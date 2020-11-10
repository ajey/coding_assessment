require 'rails_helper'

describe Api::V1::DoctorsController, type: :controller do
  user = User.create!(email: "somename@gmail.com", password: "pass@123", password_confirmation: "pass@123", name: "John")
  doctor = Doctor.create(name: "Spain")
  ts1 = TimeSlot.create(start_time: '09:00', end_time: '10:00', slot_date: '2020-11-11')
  ts2 = TimeSlot.create(start_time: '09:00', end_time: '10:00', slot_date: '2020-11-25')
  appointment1 = Appointment.create(user: user, doctor: doctor, time_slot: ts1)
  appointment2 = Appointment.create(user: user, doctor: doctor, time_slot: ts2)

  context 'appointments' do
    describe 'GET appointments' do
      before { get :appointments, params: { doctor_id: doctor.id } }
      
      it { expect(response).to have_http_status :unauthorized }
    end

    describe 'GET weekly appointments' do
      before { get :weekly_appointments, params: { doctor_id: doctor.id } }
      it { expect(response).to have_http_status :unauthorized }
    end
  end
end
