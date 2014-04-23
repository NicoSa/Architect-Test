require 'airport'

describe Airport do

include Weather
include SuperNatural

  let(:airport) { Airport.new }
  let(:plane)   { Plane.new   }

  context 'Airplane' do

    before do
      airport.stub(:weather_generator).and_return("No Storm")
      airport.stub(:dimensional_rift).and_return("Not Turbulence!")
    end

    it 'is parked after landing' do
      airport.land(plane)
      expect(airport.grounded_planes_count).to eq 1
      expect(plane.flying?).to be_false
    end

    it 'is not parked after takeoff' do
      airport.takeoff(plane)
      expect(airport.grounded_planes_count).to eq 0
    end

    it 'cannot land if the airports capacity is reached' do
      20.times{airport.land(Plane.new)}
      expect(airport.land(Plane.new)).to raise_error "No more planes can land!"
    end

    it 'can´t land twice without taking off in between' do
      airport.land(plane)
      expect(airport.land(plane)).to eq "This plane has already landed! Stop fucking with me!"
    end

  end

  context 'Under Weather: Airplane' do

    before do
      airport.stub(:weather_generator).and_return("Storm")
      airport.stub(:dimensional_rift).and_return("Not Turbulence!")
    end

    it 'can´t takeoff because there is a storm going on' do
      expect(airport.land(plane)).to eq "There is a storm going on, you can´t land!"
    end

    it 'can´t land because there is a storm going on' do
      expect(airport.takeoff(plane)).to eq "There is a storm going on, you can´t take off!"
    end

  end

  context 'SuperNatural entities' do

    before do
      airport.stub(:dimensional_rift).and_return("TURBULENCE!")
    end


    it "attack your Airport and take away your planes!" do
      18.times{airport.land(plane)}
      expect(airport.grounded_planes_count).to eq 0
    end

  end


end
