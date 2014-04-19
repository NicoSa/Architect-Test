require 'plane'

describe Plane do
 
  let(:plane) { Plane.new }
  
  it 'has a flying status when created' do
  	expect(plane).to be_true
  end
  
  it 'it flies after take off' do
  	expect(plane.flying).to be_true
  end
  
  it 'it doens´t fly after landing' do
  	expect(plane.not_flying).to be_false
  end

end

describe "The grand finale (last spec)" do

  it 'all planes can land and all planes can take off' do
  end

end