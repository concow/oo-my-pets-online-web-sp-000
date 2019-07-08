class Owner

  attr_accessor :pets
  attr_reader :species, :name     #reader used here because objects can't change species/name

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self               #add all the species objects
  end
end
