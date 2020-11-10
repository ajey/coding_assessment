class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :doctor_id, :user_id, :time_slot_id

  belongs_to :doctor
  belongs_to :user
  belongs_to :time_slot
end
