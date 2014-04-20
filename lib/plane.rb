class Plane

	def initialize(name="RandomPlane")
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