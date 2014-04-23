FAIL
====
You have fallen in love with the ternary operatory!

Whilst the solution does indeed work it is very difficult to read and reason about.
There is a whole load of wrong in airport.rb

```
def land(plane)
  raise "There is a storm going on, you can´t land!" if stormy?
  raise "OMG, Godzilla attacked your Airport" if dimensional_rift?
  raise "Airport full" if full?

  plane.lands
  @grounded_planes << plane
end

``




Architect-test
==============

This is the Architect test from Makers Academy. The plan is to write a program with TDD that simulates Airplanes, an Airport and Random weather.

=============

I also included a Supernatural module that randomly empties your Airport.
