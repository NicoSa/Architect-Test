class Plane

	def initialize
		@flying = true
	end

	def takesoff
		@flying = true
	end

	def lands
		@flying = false
	end
end