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
		if weather_is_stormy?
			return "There is a storm going on, you can´t land!"
		elsif supernatural_entities_attack?
			dimensional_rift_opens
		else
			is_the_aiport_full?(plane)
		end
	end

	def weather_is_stormy?
		weather_generator == "Storm"
	end

	def supernatural_entities_attack?
		dimensional_rift == "TURBULENCE!"
	end
	# you are asking a question but you actually do something inside!
	# is 20 the capacity?
	# do I have check the string that comes back all the time?
	def is_the_aiport_full?(plane)
		return has_this_plane_landed_already?(plane) if capacity_not_reached?
		raise "No more planes can land!"
	end

	def capacity_not_reached?
		grounded_planes_count < 20 
	end

	# I can't see column 122 on my screen
	def has_this_plane_landed_already?(plane)
		return plane_lands_and_docks(plane) if plane_doesnt_exist(plane)
		raise "This plane has already landed! Stop fucking with me!"
	end
 		 				
	def plane_doesnt_exist(plane)
		!@grounded_planes.include?(plane)
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
