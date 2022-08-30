class Dealership < ApplicationRecord
  has_many :cars

  def self.created_by
    self.order(:created_at)
  end

  def cars_count
    self.cars.count
  end
end
