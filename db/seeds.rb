# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
poa = Airport.create(code: 'POA', city: 'Porto Alegre')
gru = Airport.create(code: 'GRU', city: 'Guarulhos')
mia = Airport.create(code: 'MIA', city: 'Guarulhos')

Flight.create(code: '666', origin: poa, destination: gru)
Flight.create(code: '171', origin: gru, destination: mia)
