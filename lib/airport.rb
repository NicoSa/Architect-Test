class Airport

	attr_reader :planes

	def initialize
		@grounded_planes = []
		@capacity = 20
	end

	def land(plane)
		grounded_planes < 20 ? plane_lands_and_docks(plane) : "No more planes can land!"
	end

	def takeoff(plane)
		plane.takesoff
		@grounded_planes.delete(plane)
	end

	def grounded_planes
		@grounded_planes.count
	end

	def plane_lands_and_docks(plane)
		plane.lands
		@grounded_planes << plane
	end
	
end