require 'airport'

describe Airport do
  let(:airport) { Airport.new }
  let(:plane) { Airplane.new}
  
  context 'taking off and landing' do

    it 'a plane can land' do
      expect
    end
    
    it 'a plane can take off' do
    end

  end
  
  context 'traffic control' do

    it 'a plane cannot land if the airport is full' do
    end

    context 'weather conditions' do

      it 'a plane cannot take off when there is a storm brewing' do
      end
      
      it 'a plane cannot land in the middle of a storm' do
      end

    end

  end

end