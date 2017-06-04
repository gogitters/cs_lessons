class Planet
  @@planets_count = 0
  attr_accessor :order
  def initialize(name)
    @name = name
    @@planets_count += 1
    @order = @@planets_count
  end
  
  def self.planets_count
    @@planets_count
  end  
end

e = Planet.new("earth")
u = Planet.new("uranus")
puts "Earth order is: #{e.order}"
puts "Uranus order is: #{u.order}"

p Planet.planets_count