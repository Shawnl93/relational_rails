require 'rails_helper'

RSpec.describe 'the dealership show page' do
  it "displays dealership name" do
    dealership = Dealership.create(name: "TESLA", city: "Lone_Tree", charging_stations: 5, leasing: true)
    visit "/dealerships/#{dealership.id}"
  end
end
