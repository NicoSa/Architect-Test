require 'airport'

describe Airport do

  let(:airport) { Airport.new }
  let(:plane)   { Plane.new   }

  def full_airport
    20.times{airport.land(plane)}
  end
  
  context 'Airplane' do

    it 'is parked after landing' do
      airport.land(plane)
      expect(airport.grounded_planes).to eq 1
    end
    
    it 'is not parked after takeoff' do
      airport.takeoff(plane)
      expect(airport.grounded_planes).to eq 0
    end

    it 'cannot land if the airports capacity is reached' do
      full_airport      
      expect(airport.land(plane)).to eq "No more planes can land!"
    end

  end

  context 'weather conditions' do

    it 'a plane cannot take off when there is a storm brewing' do
    end
      
    it 'a plane cannot land in the middle of a storm' do
    end

  end

  
end