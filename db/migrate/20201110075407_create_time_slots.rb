class CreateTimeSlots < ActiveRecord::Migration[6.0]
  def change
    create_table :time_slots do |t|
      t.time :start_time
      t.time :end_time
      t.date :slot_date

      t.timestamps
    end
  end
end
