require 'plane'
require 'helper_spec'

describe Plane do

  include SpecHelper

  let(:plane) { Plane.new }

  it 'has a flying status when created and is in the air' do
    expect(plane.flying?).to be_truthy
  end

  it 'doesn´t fly after landing' do
    plane.land!
    expect(plane.flying?).to be_falsey
  end

  it 'flies after take off' do
    plane.land!
    plane.takeoff!
    expect(plane.flying?).to be_truthy
  end

end
