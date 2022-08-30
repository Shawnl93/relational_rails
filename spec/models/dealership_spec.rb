require 'rails_helper'

RSpec.describe Dealership do
  it {should have_many :cars}

end
