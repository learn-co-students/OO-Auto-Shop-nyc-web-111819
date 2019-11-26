class Mechanic

  attr_reader :name, :specialty

  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  self.class.all << self
end

def self.all 
  @@all
end 

def cars 
  Car.all.select do |car|
    car.mechanic == self 
  end 
end 

def owners 
  cars.map do |car|
    car.owner 
  end 
end 

def owner_names
  owners.map do |owner|
    owner.name 
  end 
end 

end
