require 'airport'

describe Airport do

include Weather
include SuperNatural

  let(:airport) { Airport.new }
  let(:plane)   { Plane.new   }

  context 'Airplane' do

    before do
      airport.stub(:weather_is_stormy?).and_return(false)
      airport.stub(:supernatural_entities_attack?).and_return(false)
    end

    it 'is parked after landing' do
      airport.request_landing(plane)
      expect(airport.count_planes_at_airport).to eq 1
      expect(plane.flying?).to be_false
    end

    it 'is not parked after landing' do
      airport.request_takeoff(plane)
      expect(airport.count_planes_at_airport).to eq 0
    end

    it 'cannot land if the airports capacity is reached' do
      20.times{airport.request_landing(Plane.new)}
      expect{airport.request_landing(Plane.new)}.to raise_error "No more planes can land!"
    end

    it 'can´t land twice without taking off in between' do
      airport.request_landing(plane)
      expect{airport.request_landing(plane)}.to raise_error "This plane has already landed!"
    end

  end

  context 'Under Weather: Airplane' do

    before do
      airport.stub(:weather_is_stormy?).and_return(true)
      airport.stub(:supernatural_entities_attack?).and_return(false)
    end

    it 'can´t takeoff because there is a storm going on' do
      expect{airport.request_landing(plane)}.to raise_error "There is a storm going on, you can´t take off or land!"

    end

    it 'can´t land because there is a storm going on' do
      expect{airport.request_takeoff(plane)}.to raise_error "There is a storm going on, you can´t take off or land!"

    end

  end

  context 'SuperNatural entities' do

    before do
      airport.stub(:weather_is_stormy?).and_return(false)
      airport.stub(:supernatural_entities_attack?).and_return(false)
    end


    it "attack your Airport and take away your planes!" do
      18.times{airport.request_landing(Plane.new)}
      airport.dimensional_rift_opens
      expect(airport.count_planes_at_airport).to eq 0
    end

  end


end
