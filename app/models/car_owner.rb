class CarOwner

  attr_accessor 
  attr_reader :name, :cars

  @@all = []
  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    #all cars owned
    Car.all.select {|cars| cars.car_owner == self}
  end

  def mechanics
    # Get a list of all the mechanics that a specific owner goes to
    car.map {|cars| cars.mechanic}
  end

  def self.average_cars
    # Get the average amount of cars owned for all owners
    cars_owned = @@all.map {|owners| owners.cars}
    array = cars_owned.map {|cars| cars.length}
    array.sum.to_f / array.length.to_f
  end


end
