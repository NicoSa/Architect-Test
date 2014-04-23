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
			return storm_warning
		elsif supernatural_entities_attack?
			dimensional_rift_opens
		else
			request_landing_for(plane)
		end
	end

	def weather_is_stormy?
		weather_generator == "Storm"
	end

	def supernatural_entities_attack?
		dimensional_rift == "TURBULENCE!"
	end

	def request_landing_for(plane)
		return check_identity_of(plane) if capacity_not_reached?
		raise "No more planes can land!"
	end

	def capacity_not_reached?
		grounded_planes_count < 20 
	end

	def check_identity_of(plane)
		return land_and_park(plane) if unique?(plane)
		raise "This plane has already landed! Stop fucking with me!"
	end
 		 				
	def unique?(plane)
		!@grounded_planes.include?(plane)
	end

	def land_and_park(plane)
		plane.lands
		@grounded_planes << plane
	end

	def takeoff(plane)
		return storm_warning if weather_is_stormy?
		plane_takesoff_and_leaves_airport(plane)
	end

	def storm_warning
		"There is a storm going on, you can´t take off or land!"
	end

    def plane_takesoff_and_leaves_airport(plane)
		plane.takesoff
		@grounded_planes.delete(plane)
	end

	def grounded_planes_count
		@grounded_planes.count
	end

end
