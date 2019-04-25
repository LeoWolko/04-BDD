require "faker"

20.times do
City.create(name: Faker::Address.city)
end

10.times do
	Doctor.create(first_name: Faker::Movies::StarWars.character, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city:City.all.sample)
end

10.times do
	Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)
end

10.times do
 Specialty.create( specialty_name: Faker::Restaurant.type)
end

10.times do
  JoinTableSpecialtyDoctor.create( doctor: Doctor.all.sample, specialty: Specialty.all.sample)
end

10.times do
  Appointment.create(date: Faker::Date.forward(60), doctor: Doctor.all.sample, patient: Patient.all.sample, city: City.all.sample)
end
