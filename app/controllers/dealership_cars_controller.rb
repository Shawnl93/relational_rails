class DealershipCarsController < ApplicationController
  def index
    dealership = Dealership.find(params[:dealerships_id])
    @cars = dealership.cars
  end
end
