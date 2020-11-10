class TimeSlotSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :end_time, :slot_date
end
