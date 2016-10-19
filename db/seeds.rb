# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
poa = Airport.find_or_create_by(code: 'POA', city: 'Porto Alegre')
gru = Airport.find_or_create_by(code: 'GRU', city: 'Guarulhos')
mia = Airport.find_or_create_by(code: 'MIA', city: 'Guarulhos')

f1 = Flight.find_or_create_by(code: '666', origin: poa, destination: gru)
f2 = Flight.find_or_create_by(code: '171', origin: gru, destination: mia)

('A'..'E').each do |row|
  (1..55).each do |number|
    Seat.create(row: row, number: number, flight: f1)
    Seat.create(row: row, number: number, flight: f2)
  end
end
