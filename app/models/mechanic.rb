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

  def mech_car_list
    Car.all.select {|car|
    car.mechanic == self
    }
  end

  def car_owner_list
    mech_car_list.map {|car|
    car.owner
    }
  end

  def car_owner_names
    car_owner_list.map {|owner|
    owner.name
    }
  end

end
