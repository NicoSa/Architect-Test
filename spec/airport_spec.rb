require 'airport'

describe Airport do

include Weather

  let(:airport) { Airport.new }
  let(:plane)   { Plane.new   }

  def full_airport
    20.times{airport.land(plane)}
  end
  
  context 'Airplane' do

    before do
      airport.stub(:weather_generator).and_return("No Storm")
    end

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

  context 'Airplane' do

    before do
      airport.stub(:weather_generator).and_return("Storm")
    end

    it 'can´t takeoff because there is a storm going on' do
      expect(airport.land(plane)).to eq "There is a storm going on, you can´t land!"
    end
      
    it 'can´t land because there is a storm going on' do
      expect(airport.takeoff(plane)).to eq "There is a storm going on, you can´t take off!"
    end

  end

end