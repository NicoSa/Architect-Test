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
		# raise "You are already flying!" if flying?
		@flying = true
	end


	def land!
		# raise "You have already landed!" if landed?
		@flying = false
	end
end
