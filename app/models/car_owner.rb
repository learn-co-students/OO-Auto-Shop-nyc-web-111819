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
    Car.all.select {|car| car.owner == self}
  end

  def mechanics
    # returns an array with one nil item if they have at least one care but no mechanics at all
    car_mechanics = cars.map {|car| car.mechanic}
    binding.pry
    car_mechanics.uniq
  end

  def self.average_cars_owned
    numbers = CarOwner.all.map {|owner| owner.cars.length}
    numbers.sum.to_f / CarOwner.all.length
  end


end
