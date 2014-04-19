class Airport

	attr_reader :planes

	def initialize
		@planes = []
		@capacity = 20
	end

	def land(plane)
		if grounded_planes < 20
			plane.landed
			@planes << plane
		else
			raise "No more planes can land!"
		end
	end

	def takeoff(plane)
		plane.takenoff
		@planes.delete(plane)
	end

	def grounded_planes
		@planes.count
	end

end