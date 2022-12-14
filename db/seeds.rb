# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@tesla = Dealership.create!(name: "TESLA", city: "Lone_Tree", charging_stations: 5, leasing: true)
@tesla_1 = Dealership.create!(name: "TESLA", city: "Denver", charging_stations: 7, leasing: true)
@stesla = @tesla.cars.create!(make: "Tesla", model: "S", year: "2025", auto_pilot: true)
@xtesla = @tesla.cars.create!(make: "Tesla", model: "X", year: "2050", auto_pilot: true)
@ytesla = @tesla.cars.create!(make: "Tesla", model: "Y", year: "2030", auto_pilot: false)
