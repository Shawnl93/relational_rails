require 'rails_helper'

RSpec.describe 'the dealership show page' do
  it "displays dealership attributes" do
    dealership = Dealership.create(name: "TESLA", city: "Lone_Tree", charging_stations: 5, leasing: true)
    visit "/dealerships"

    expect(page).to have_content(dealership.name)
  end

  it "displays record of most recently created" do
    dealership = Dealership.create(name: "TESLA", city: "Lone_Tree", charging_stations: 5, leasing: true)
    visit "/dealerships"

    expect(page).to have_content("Most recently created: ")
  end
end
