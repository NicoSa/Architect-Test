module Weather

	def weather_is_stormy?
		weather_indicator = rand(10)
		return false if weather_indicator != 1
	end
			
end