require './body.rb'
require 'ap'
require 'pp'

class System

  def initialize
    @bodies = []
  end

  def bodies
    @bodies
  end

  def add(body)
    if bodies.include?(body)
      puts "There can only be one #{body.name}."
    else
      @bodies << body
    end
  end

  def total_mass
    running_mass = 0
    @bodies.each { |body| running_mass += body.mass}
    return running_mass
  end

end

solar_system = System.new

earth = Planet.new('Earth', 5.972 * 10**24, 24, 365.24)
sun = Star.new('Sun', 1.989 * 10**30, 'G-type')
moon = Moon.new('Moon', 7.348 * 10**22, 27.32, earth)

solar_system.add(earth)
solar_system.add(sun)
solar_system.add(moon)
solar_system.add(sun)

puts "Bodies in the Solar System:"
pp solar_system.bodies

puts "Total mass of the Solar System:"
puts solar_system.total_mass
puts Planet.all(solar_system).inspect
puts Star.all(solar_system).inspect
