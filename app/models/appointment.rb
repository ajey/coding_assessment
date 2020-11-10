class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :user
  belongs_to :time_slot

  validate :slot_available

  private

  def slot_available
    if doctor.appointments.where(time_slot_id: time_slot_id).exists?
      errors.add(:appointment, 'This time slot is already booked')
    end
  end
end
