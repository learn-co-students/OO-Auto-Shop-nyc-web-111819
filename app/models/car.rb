class Car

  attr_reader :make, :model, :classification, :owner, :mechanic

  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    @@all.map {|car|
    car.classification
    }
  end

  def expertise_match
    Car.all.select {|car|
    car.mechanic.specialty == self.classification}
  end

end
