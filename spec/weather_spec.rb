require 'weather'

describe Weather do

include Weather

	xit "returns Storm for weather indicator 1" do
      	weather_generator.stub(:weather_indicator).should be 1
		expect(weather_generator).to eq "Storm"
	end

	xit "returns No Storm for every other weather indicator" do
		weather_generator.stub(weather_indicator).and_return(2)
		expect(weather_generator).to eq "No Storm"
	end

end