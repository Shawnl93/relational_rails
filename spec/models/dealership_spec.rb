require 'rails_helper'

RSpec.describe Dealership do
  describe "relationships" do
  it {should have_many :cars}
  end

  describe "instance methods" do
    before :each do
      @tesla = Dealership.create!(name: "TESLA", city: "Lone_Tree", charging_stations: 5, leasing: true)
      @tesla_1 = Dealership.create!(name: "TESLA", city: "Denver", charging_stations: 7, leasing: true)
      @stesla = @tesla.cars.create!(make: "Tesla", model: "S", year: "2025", auto_pilot: true)
      @xtesla = @tesla.cars.create!(make: "Tesla", model: "X", year: "2050", auto_pilot: true)
      @ytesla = @tesla.cars.create!(make: "Tesla", model: "Y", year: "2030", auto_pilot: false)
    end

    describe "sorted by most recently created" do
      it 'sorts be recently created' do
        expect(Dealership.created_by).to eq([@tesla, @tesla_1])
      end
    end
  end
end
