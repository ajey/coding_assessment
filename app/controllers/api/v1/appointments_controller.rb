class Api::V1::AppointmentsController < ApplicationController

  before_action :require_login

  def create
    appointment = Appointment.new(appointment_params)
  
    if appointment.save
      render json: appointment, status: :created
    else
      render json: appointment.errors, status: :bad_request
    end
  end

  private
  
  def appointment_params
    params.require(:appointment).permit(:user_id, :doctor_id, :time_slot_id)
  end
end
