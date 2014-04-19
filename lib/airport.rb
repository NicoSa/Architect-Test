class Airport

	attr_reader :planes, :capacity

	def initialize
		@planes = []
		@capacity = 20
	end

	def park(plane)
		if planes_at_airport < 20
		@planes << plane
		else
		raise "No more planes can be parked!"
		end
	end

	def takeoff(plane)
		@planes.delete(plane)
	end

	def planes_at_airport
		@planes.count
	end

end