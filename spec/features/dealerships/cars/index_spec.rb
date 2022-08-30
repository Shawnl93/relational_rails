# User Story 5, Parent Children Index

# As a visitor
# When I visit '/parents/:parent_id/child_table_name'
# Then I see each Child that is associated with that Parent with each Child's attributes:

require 'rails_helper'

RSpec.describe 'Dealerships Car index' do
  before :each do
    @tesla = Dealership.create!(name: "TESLA", city: "Denver", charging_stations: 7, leasing: true)
    @stesla = @tesla.cars.create!(make: "Tesla", model: "S", year: "2025", auto_pilot: true)
    @xtesla = @tesla.cars.create!(make: "Tesla", model: "X", year: "2050", auto_pilot: true)
  end

  it 'shows all of the child that is associated with that parent' do

    visit "/dealerships/#{@tesla.id}/cars"

    expect(page).to have_content(@stesla.model)
    expect(page).to have_content(@xtesla.model)
  end
end
