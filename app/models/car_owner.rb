class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def owner_cars
    Car.all.select {|car|
    car.owner == self
    }
  end

  def mech_list
    owner_cars.map {|car|
    car.mechanic
    }
  end

  def self.average_num_of_cars
    Car.all.length/@@all.length.to_f
  end

end
