require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

owner1 = CarOwner.new("Vasya")
owner2 = CarOwner.new("Leigh")
owner3 = CarOwner.new("Richard")

mechanic1 = Mechanic.new("Igor", "clunker")
mechanic2 = Mechanic.new("Prax", "exotic")
mechanic3 = Mechanic.new("Tom", "antique")

car1 = Car.new("Lada", "L5", "clunker", owner1, mechanic1)
car2 = Car.new("Nissan", "N2", "exotic", owner2, mechanic2)
car3 = Car.new("Ford", "Mustang", "antique", owner3, mechanic3)
car4 = Car.new("Tesla", "Model S", "exotic", owner3, mechanic2)


binding.pry
