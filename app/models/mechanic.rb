class Mechanic

  attr_reader :name, :specialty

  @@all = []
  def initialize(name, specialty)
    @name = name
    @specialty = specialty

    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    # Get a list of all cars that a mechanic services
    Car.all.select {|cars| cars.mechanic == self}
  end

  def car_owners
    # all the car ownwers that go to the mechanic
    cars.map {|cars| cars.car_owner}
  end

  def car_owners_name
    car_owners.map {|car_owner| car_owner.name}
  end
end
