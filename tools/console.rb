require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

shakil = CarOwner.new("Shakil")
alex = CarOwner.new("Alex")
colin = CarOwner.new("Colin")
gianca = CarOwner.new("Giancarlo")

benz = Car.new("Mercedes", "E300", "luxury")
prius = Car.new("Toyota", "Prius", "electric")
tesla = Car.new("Tesla", "Model 3", "electric")
gt = Car.new("Ford", "GT", "antique")
beamer = Car.new("BMW", "M5", "exotic")

tony = Mechanic.new("Tony", "luxury")
elon = Mechanic.new("Elon", "electric")
buddy = Mechanic.new("Buddy", "antique")
richard = Mechanic.new("Richard", "luxury")
james = Mechanic.new("James", "exotic")

benz.new_owner(shakil)
prius.new_owner(colin)
tesla.new_owner(shakil)
gt.new_owner(colin)
beamer.new_owner(gianca)

benz.new_mechanic(tony)
gt.new_mechanic(buddy)
tesla.new_mechanic(elon)
prius.new_mechanic(elon)
beamer.new_mechanic(james)

binding.pry
