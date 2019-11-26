require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

anna = CarOwner.new("Anna")
ethan = CarOwner.new("Ethan")
dean = Mechanic.new("Dean", "antique")
car1 = Car.new("Make", "Model", "antique", anna, dean)

binding.pry
