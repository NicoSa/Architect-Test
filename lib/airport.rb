require_relative './weather'
require_relative './supernatural'

class Airport

	include Weather
	include SuperNatural

	attr_reader :planes_at_airport, :capacity, :name

	def initialize(name="FRA", capacity = 20)
		@name = name
		@planes_at_airport = []
		@capacity = capacity
	end

	def land(plane)
		if weather_is_stormy?
			return storm_warning
		elsif supernatural_entities_attack?
			dimensional_rift_opens
		else
			requests_landing_for(plane)
		end
	end

	def weather_is_stormy?
		weather_generator == "Storm"
	end

	def supernatural_entities_attack?
		dimensional_rift == "TURBULENCE!"
	end

	def requests_landing_for(plane)
		return check_identity_of(plane) if capacity_not_reached?
		raise "No more planes can land!"
	end

	def capacity_not_reached?
		count_planes_at_airport < @capacity
	end

	def check_identity_of(plane)
		return land_and_park(plane) if unique?(plane)
		raise "This plane has already landed!"
	end
 		 				
	def unique?(plane)
		!@planes_at_airport.include?(plane)
	end

	def land_and_park(plane)
		plane.land!
		@planes_at_airport << plane
	end

	def takeoff(plane)
		return storm_warning if weather_is_stormy?
		plane_takesoff_and_leaves_airport(plane)
	end

	def storm_warning
		"There is a storm going on, you can´t take off or land!"
	end

    def plane_takesoff_and_leaves_airport(plane)
		plane.takeoff!
		@planes_at_airport.delete(plane)
	end

	def count_planes_at_airport
		@planes_at_airport.count
	end

end
