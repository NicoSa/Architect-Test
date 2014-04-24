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
		# Guard clause
		# whilst the ternary has been removed you've replaced it with a different syntax
		# but the unerlying mess is the same
		# also you lack consitency between raise and return sometimes you raise sometimes you return
		#
		# Have a read through theese blogs
		#
		# http://refactoring.com/catalog/replaceNestedConditionalWithGuardClauses.html
		# http://c2.com/cgi/wiki?GuardClause
		#
		# does this seem cleaner?

		raise storm_warning if weather_is_stormy?
		raise dimensional_rift_opens if supernatural_entities_attack?
		raise "This plane has already landed!" unless unique?(plane)
		raise "No more planes can land!" if capacity_not_reached?

		#action
		land_and_park(plane)
	end

	def weather_is_stormy?
		weather_generator == "Storm"
	end

	def supernatural_entities_attack?
		dimensional_rift == "TURBULENCE!"
	end

	def capacity_not_reached?
		count_planes_at_airport < @capacity
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
