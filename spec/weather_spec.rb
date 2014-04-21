require 'weather'

describe Weather do

include Weather

	xit "returns Storm for weather indicator 1" do
		srand(3)
		expect(weather_generator).to eq "Storm"
	end

	xit "returns No Storm for every other weather indicator" do
		srand(4)
		expect(weather_generator).to eq "No Storm"
	end

end