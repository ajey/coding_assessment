class Api::V1::DoctorsController < ApplicationController
  before_action :require_login

  def appointments
    doctor = Doctor.find params[:doctor_id]
    appointments = doctor.appointments.joins(:time_slot).where('time_slots.slot_date': Date.today)

    render json: appointments
  end

  def weekly_appointments
    doctor = Doctor.find params[:doctor_id]
    appointments = doctor.appointments.joins(:time_slot).where('time_slots.slot_date': Date.today..(Date.today + 1.week))

    render json: appointments
  end
end
