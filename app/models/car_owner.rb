class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self 
  end

  def self.all 
    @@all 
  end 

  def cars 
    Car.all.select do |car|
      car.owner == self 
    end 
  end 

  def mechanics
    unique_mechanics = cars.map do |car|
      car.mechanic 
    end 
    unique_mechanics.uniq
  end 

  def self.average_num_cars
    total_cars = self.all.reduce(0) {|total, owner| total + owner.cars.length}
    total_cars / self.all.length.to_f
  end 

end
