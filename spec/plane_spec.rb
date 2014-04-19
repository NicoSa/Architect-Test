require 'plane'

describe Plane do
 
  let(:plane) { Plane.new }
  
  it 'has a flying status when created and is in the air' do
  	expect(plane).to be_true
  end
  
  it 'flies after take off' do
  	expect(plane.takesoff).to be_true
  end
  
  it 'doesn´t fly after landing' do
  	expect(plane.lands).to be_false
  end

end