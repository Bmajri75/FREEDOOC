# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker' # on reauier la gem 


# je detruit toutes les db deja cree 
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
Specialty.destroy_all


100.times do
doctor = Doctor.create!(
  first_name: Faker::Superhero.prefix,
  last_name: Faker::Games::Pokemon.name,
  zip_code: Faker::Address.zip_code,
  )
end

Specialty.create!(specialty: "Généraliste")
Specialty.create!(specialty: "dentiste")
Specialty.create!(specialty: "psychologue")
Specialty.create!(specialty: "kine")
Specialty.create!(specialty: "neurologue")

100.times do
patient = Patient.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  )
end

100.times do
appointment = Appointment.create!(
  doctor: Doctor.all.sample,
  patient: Patient.all.sample,
  doctor_id: Doctor.all.sample.id,
  patient_id: Patient.all.sample.id,
  date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
  )
end

20.times do
  join = JoinTableDoctorSpecialty.create!(doctor: Doctor.all.select(:id).sample, specialty: Specialty.all.select(:id).sample)
end