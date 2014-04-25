require 'plane'

describe Plane do

  let(:plane) { Plane.new }

  it 'has a flying status when created and is in the air' do
  	expect(plane.flying?).to be_true
  end

  it 'doesn´t fly after landing' do
      plane.land!
      expect(plane.flying?).to be_false
  end

  it 'flies after take off' do
      plane.land!
      plane.takeoff!
  	expect(plane.flying?).to be_true
  end

end
