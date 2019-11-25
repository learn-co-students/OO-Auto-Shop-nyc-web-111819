require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

o1 = CarOwner.new("Alph")
o2 = CarOwner.new("Berta")
o3 = CarOwner.new("Clemmie")
o4 = CarOwner.new("Dottie")

m1 = Mechanic.new("m1", "Vintage")
m2 = Mechanic.new("m2", "Clunker")
m3 = Mechanic.new("m3", "Sport")
m4 = Mechanic.new("m4", "Vintage")



c1 = Car.new(o1, "Ford", "Mustang '74", "Vintage", m1)
c2 = Car.new(o3, "Alpha Romeo", "Rad '64", "Vintage", m1)
c3 = Car.new(o1, "Honda", "Civic", "Clunker", m2)
c4 = Car.new(o2, "Buick", "Very Old School", "Clunker", m2)
c5 = Car.new(o2, "Ferrari", "Racer", "Sport", m3)
c6 = Car.new(o3, "Ford", "Racer", "Sport", m3)



binding.pry
