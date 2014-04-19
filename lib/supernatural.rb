module SuperNatural

	def dimensional_rift
		attack_indicator = rand(20)
		if attack_indicator == 1 then "TURBULENCE!" end
	end

	def dimensional_rift_opens
		dimensional_rubics_cube = rand(3)

		if dimensional_rubics_cube == 1
			puts "OMG, Godzilla attacked your Airport, if you could only see, oh the HORROR...Casualty rate 100%"
			@grounded_planes = []
		elsif dimensional_rubics_cube == 2
			puts "A huge tentacle grabs all planes and takes them away to another dimension. Well, that was unexpected?!"
			@grounded_planes = []
		else 
			puts "Wormhole took your airgrounded_planes"
			@grounded_planes = []
		end
	end
end