require_relative './weather'

class Airport

	include Weather 

	attr_reader :planes

	def initialize
		@grounded_planes = []
		@capacity = 20
	end

	def land(plane)
		if weather_generator == "Storm"
			return "There is a storm going on, you can´t land!"
		else
			grounded_planes < 20 ? plane_lands_and_docks(plane) : "No more planes can land!"
		end
	end

	def takeoff(plane)
		if weather_generator == "Storm"
		 return "There is a storm going on, you can´t take off!"
		else
			plane_takesoff_and_left_airport(plane)
		end
	end

	def grounded_planes
		@grounded_planes.count
	end

	def plane_lands_and_docks(plane)
		plane.lands
		@grounded_planes << plane
	end

	def plane_takesoff_and_left_airport(plane)
		plane.takesoff
		@grounded_planes.delete(plane)
	end

end