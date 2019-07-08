class Owner

  attr_accessor :pets
  attr_reader :species, :name     #reader used here because objects can't change species/name

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self               #add all the species objects (owners) to our class var array
  end

  def self.all
    return @@all
  end

  def self.count                        #class method counts/returns our class var size
    return @@all.size
  end

  def self.reset_all
    return @@all.clear                  #clear (reset) our owner array
  end

  def say_species
     "I am a #{self.species}."
  end

  def buy_cat



end
