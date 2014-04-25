class Plane

	attr_reader :name, :flying

	def initialize(name="A380")
		@name = name
		@flying = true
	end

	def flying?
		@flying
	end

	def takeoff!
		@flying = true
	end

	def land!
		@flying = false
	end
	
end
