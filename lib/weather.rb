module Weather

	def weather_generator
		weather_indicator = rand(10)
		weather_indicator == 1 ? "Storm" : "No Storm"
	end
			
end