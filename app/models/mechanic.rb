class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    self.class.all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select {|car| car.mechanic == self}
  end

  def clients
    client_list = self.cars.map {|car| car.owner}
    client_list.uniq
  end

  def client_names
    self.clients.map {|client| client.name}
  end

  def self.find_by_specialty(specialty)
    Mechanic.all.select {|mechanic| mechanic.specialty == specialty}
  end

  def self.find_by_name(name)
    Mechanic.all.find {|mechanic| mechanic.name == name}
  end


end
