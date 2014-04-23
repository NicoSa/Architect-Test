class Plane

	def initialize(name="A380")
		@name = name
		@flying = true
	end

	def flying?
		@flying
	end

	def takesoff
		@flying = true
	end

	# lands sounds like a question rather than a command.
	# how about just "land"
	def lands
		@flying = false
	end
end
