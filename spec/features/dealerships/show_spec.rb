require 'rails_helper'

RSpec.describe 'the dealership show page' do
  it "displays dealership attributes" do
    dealership = Dealership.create(name: "TESLA", city: "Lone_Tree", charging_stations: 5, leasing: true)
    visit "/dealerships/#{dealership.id}"

    expect(page).to have_content(dealership.name)
    expect(page).to have_content(dealership.city)
    expect(page).to have_content(dealership.charging_stations)
    expect(page).to have_content(dealership.leasing)
  end
end
