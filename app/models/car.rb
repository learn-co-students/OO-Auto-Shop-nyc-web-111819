class Car

  attr_reader :owner, :make, :model, :classification, :mechanic

  @@all = []

  def initialize(owner, make, model, classification, mechanic = nil)
    @owner = owner
    @make = make
    @model = model
    @classification = classification
    @mechanic = mechanic
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.list_classifications
    classifications = self.all.map {|car| car.classification}
    classifications.uniq
  end

  def find_qualified_mechanics
    Mechanic.find_by_specialty(self.classification)
  end

  def choose_mechanic(mechanic_name)
    choice = Mechanic.find_by_name(mechanic_name)
    if !!choice 
      self.mechanic = choice
    else
      puts "Could not find #{mechanic_name}"
    end
  end



end
