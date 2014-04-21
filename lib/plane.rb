class Plane

	def initialize(name="A380")
		@name = name
		@flying = true
	end

	def takesoff
		@flying = true
	end

	def lands
		@flying = false
	end
end