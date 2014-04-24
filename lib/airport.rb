require_relative './weather'
require_relative './supernatural'
require_relative './airporthelpermethods'

class Airport

	include Weather
	include SuperNatural
	include AirportHelperMethods

	attr_reader :planes_at_airport, :capacity, :name

	def initialize(name="FRA", capacity = 20)
		@name = name
		@planes_at_airport = []
		@capacity = capacity
	end

	def request_landing(plane)
		raise storm_warning if weather_is_stormy?
		raise dimensional_rift_opens if supernatural_entities_attack?
		raise "This plane has already landed!" if has_landed?(plane)
		raise "No more planes can land!" if capacity_reached?
		land_and_park(plane)
	end

	def land_and_park(plane)
		plane.land!
		@planes_at_airport << plane
	end

    def request_takeoff(plane)
		raise storm_warning if weather_is_stormy?
		raise dimensional_rift_opens if supernatural_entities_attack?
		takeoff_and_leave(plane)
	end

	def takeoff_and_leave(plane)
		plane.takeoff!
		@planes_at_airport.delete(plane)
	end

end
