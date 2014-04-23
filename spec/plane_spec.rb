require 'plane'

describe Plane do
 
  let(:plane) { Plane.new }
  
  it 'has a flying status when created and is in the air' do
  	expect(plane).to be_true
  end
  
  it 'flies after take off' do
  	expect(plane.takeoff!).to be_true
  end
  
  it 'doesn´t fly after landing' do
  	expect(plane.land!).to be_false
  end

end