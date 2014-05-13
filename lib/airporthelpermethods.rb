module AirportHelperMethods

  def has_landed?(plane)
    @planes_at_airport.include?(plane)
  end

  def capacity_reached?
    !(count_planes_at_airport < @capacity)
  end

  def count_planes_at_airport
    @planes_at_airport.count
  end

  def storm_warning
    "There is a storm going on, you can´t take off or land!"
  end

end
