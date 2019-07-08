class Owner

  attr_accessor :pets
  attr_reader :specier, :name     #reader used here because objects can't change species/name

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
end
