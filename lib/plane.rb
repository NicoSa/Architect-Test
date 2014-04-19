class Plane

	def initialize
		@flying = true
	end

	def takenoff
		@flying = true
	end

	def landed
		@flying = false
	end
end