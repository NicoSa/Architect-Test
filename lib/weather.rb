module Weather

	def weather_generator
		weather_indicator = rand(10)
		return "Storm" if weather_indicator == 1
		return "No Storm"
	end
			
end