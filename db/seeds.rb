# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Doctor.destroy_all
TimeSlot.destroy_all

doctors = Doctor.create([{ name: 'Jane Doe' }, { name: 'John Doe' }])

time_slots = TimeSlot.create([
  {start_time: '09:00', end_time: '10:00', slot_date: '2020-11-10'},
  {start_time: '10:00', end_time: '11:00', slot_date: '2020-11-10'},
  {start_time: '11:00', end_time: '12:00', slot_date: '2020-11-10'},
  {start_time: '09:00', end_time: '10:00', slot_date: '2020-11-11'},
  {start_time: '10:00', end_time: '11:00', slot_date: '2020-11-11'},
  {start_time: '11:00', end_time: '12:00', slot_date: '2020-11-11'},
  {start_time: '11:00', end_time: '12:00', slot_date: '2020-11-12'}
])
