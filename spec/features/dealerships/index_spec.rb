require 'rails_helper'

RSpec.describe 'the dealership show page' do
  it "displays dealership attributes" do
    dealership = Dealership.create(name: "TESLA", city: "Lone_Tree", charging_stations: 5, leasing: true)
    visit "/dealerships"

    expect(page).to have_content(dealership.name)
  end

  it "has link to go to dealership's index page" do
    dealership = Dealership.create(name: "TESLA", city: "Lone_Tree", charging_stations: 5, leasing: true)
    car = dealership.cars.create!(make: "Tesla", model: "S", year: 2023, auto_pilot: true)
    car_2 = dealership.cars.create!(make: "Tesla", model: "3", year: 2020, auto_pilot: false)
    car_3 = dealership.cars.create!(make: "Tesla", model: "X", year: 2022, auto_pilot: true)
    car_4 = dealership.cars.create!(make: "Tesla", model: "Y", year: 2023, auto_pilot: true)
    visit '/dealerships'

    click_link('Dealership')
    expect(current_path).to eq('/dealerships')

  end
end
