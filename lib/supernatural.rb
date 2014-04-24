module SuperNatural

	def supernatural_entities_attack?
		attack_indicator = rand(20)
		return false if attack_indicator != 1
	end

	def dimensional_rift_opens
		dimensional_rubics_cube = rand(3)

		if dimensional_rubics_cube == 1
			@planes_at_airport = []
			return  "OMG, Godzilla attacked your Airport, if you could only see, oh the HORROR...Casualty rate 100%...Oh, wait Ruby saved the planes because you can´t destroy objects in Ruby!"
			
		elsif dimensional_rubics_cube == 2
			@planes_at_airport = []
			return  "A huge tentacle grabs all planes and takes them away to another dimension. Well, that was unexpected?! Oh, wait Ruby saved the planes because you can´t destroy objects in Ruby!"
		else 
			@planes_at_airport = []
			return "Wormhole took your planes! Oh, wait Ruby saved the planes because you can´t destroy objects in Ruby!"
		end
	end
end