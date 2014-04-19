require 'airport'

describe Airport do

  let(:airport) { Airport.new }
  let(:plane) {Plane.new}

  def full_airport
    20.times{airport.land(plane)}
  end
  
  context 'landing and takeoff' do

    it 'a plane can be parked after landing' do
      airport.land(plane)
      expect(airport.grounded_planes).to eq 1
    end
    
    it 'a plane is not parked anymore after takeoff' do
      airport.takeoff(plane)
      expect(airport.grounded_planes).to eq 0
    end

  end
  
  context 'traffic control' do

    it 'a plane cannot land if the airport is full' do
      full_airport      
      expect{airport.land(plane)}.to raise_error "No more planes can land!"
    end

    context 'weather conditions' do

      it 'a plane cannot take off when there is a storm brewing' do
      end
      
      it 'a plane cannot land in the middle of a storm' do
      end

    end

  end
end