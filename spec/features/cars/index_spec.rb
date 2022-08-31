require 'rails_helper'

RSpec.describe 'the cars index page' do
    it "displays the cars make" do
      dealership = Dealership.create!(name: "TESLA", city: "Lone_Tree", charging_stations: 5, leasing: true)
      car = dealership.cars.create!(make: "Tesla", model: "S", year: 2023, auto_pilot: true)
      car_2 = dealership.cars.create!(make: "Tesla", model: "3", year: 2020, auto_pilot: false)
      car_3 = dealership.cars.create!(make: "Tesla", model: "X", year: 2022, auto_pilot: true)
      car_4 = dealership.cars.create!(make: "Tesla", model: "Y", year: 2023, auto_pilot: true)
      visit "/cars"
      # localhost:3000/cars/1
      # save_and_open_page
      expect(page).to have_content(car.make)
      # expect(page).to_not have_content(car_2.make)
  end

  it "has link to go to car's index page" do
    visit "/cars/#{car.id}"

    click_link('Cars')
    expect(current_path).to eq('/cars')
  end
end
