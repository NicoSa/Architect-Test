require 'plane'

describe Plane do
 
  let(:plane) { Plane.new }
  
  it 'has a flying status when created' do
  	expect(plane).to be_true
  end
  
  it 'can take off' do
  	expect(plane.takeoff).to be_true
  end
  
  it 'changes its status to flying after taking of' do
  	expect(plane.land).to be_false
  end

end

describe "The grand finale (last spec)" do

  it 'all planes can land and all planes can take off' do
  end

end