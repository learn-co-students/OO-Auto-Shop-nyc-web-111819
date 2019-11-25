class Car

  attr_accessor :car_owner, :mechanic
  attr_reader :make, :model, :classification

  @@all = []
  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification
    @car_owner
    @mechanic

    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    @@all.map {|cars| cars.classification}.uniq
  end

  def mechanics
    Mechanic.all.select {|mechanics| mechanics.specialty == self.classification}
  end

  def new_owner(owner)
    # car gets a new owner
    @car_owner = owner
  end

  def new_mechanic(mechanic)
    # adds a mechanic to the car
    @mechanic = mechanic
  end

end
