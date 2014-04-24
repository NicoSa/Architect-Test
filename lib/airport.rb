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

    def takeoff(plane)
		raise storm_warning if weather_is_stormy?
		plane_takesoff_and_leaves_airport(plane)
	end

	def plane_takesoff_and_leaves_airport(plane)
		plane.takeoff!
		@planes_at_airport.delete(plane)
	end

	def weather_is_stormy?
		weather_generator == "Storm"
	end

	def supernatural_entities_attack?
		dimensional_rift == "TURBULENCE!"
	end

	def capacity_reached?
		!(count_planes_at_airport < @capacity)
	end

	def has_landed?(plane)
		@planes_at_airport.include?(plane)
	end

	def storm_warning
		"There is a storm going on, you can´t take off or land!"
	end

    def count_planes_at_airport
		@planes_at_airport.count
	end

end
