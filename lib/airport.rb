require_relative './weather'
require_relative './supernatural'

class Airport

	include Weather
	include SuperNatural

	attr_reader :grounded_planes

	def initialize(name="FRA")
		@name = name
		@grounded_planes = []
		@capacity = 20
	end

	def land(plane)
		if weather_generator == "Storm"
			return "There is a storm going on, you can´t land!"
		elsif dimensional_rift == "TURBULENCE!"
			dimensional_rift_opens
		else
			check_airport_capacity(plane)
		end
	end

	# you are asking a question but you actually do something inside!
	# is 20 the capacity?
	# do I have check the string that comes back all the time?
	def check_airport_capacity(plane)
		grounded_planes_count < 20 ? has_this_plane_landed_already?(plane) : "No more planes can land!"
	end

	# I can't see column 122 on my screen
	def has_this_plane_landed_already?(plane)
		@grounded_planes.include?(plane) ? "This plane has already landed! Stop fucking with me!" : plane_lands_and_docks(plane)
	end

	def plane_lands_and_docks(plane)
		plane.lands
		@grounded_planes << plane
	end

	def takeoff(plane)
		weather_generator == "Storm" ? "There is a storm going on, you can´t take off!" : plane_takesoff_and_leaves_airport(plane)
	end

    def plane_takesoff_and_leaves_airport(plane)
		plane.takesoff
		@grounded_planes.delete(plane)
	end

	def grounded_planes_count
		@grounded_planes.count
	end

end
