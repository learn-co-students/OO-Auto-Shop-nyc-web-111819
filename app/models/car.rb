class Car

  attr_reader :make, :model, :classification, :owner, :mechanic

  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    self.class.all << self 
  end

  def self.all
    @@all
  end 

  def self.classifications 
    self.all.map do |car|
      car.classification 
    end 
  end 

  def self.mechanics_with_speciality
    Mechanic.all.select do |mechanic|
      classifications.include?(mechanic.specialty)
    end 
  end 

end
