class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :doctor_id
      t.integer :time_slot_id
      t.integer :user_id

      t.timestamps
    end
  end
end
