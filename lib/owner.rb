
class Owner

  attr_accessor :pets
  attr_reader :species, :name           #species/name can't change its species only reads!

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self                         #add all species to our class var array
  end

  def self.all
    return @@all
  end

  def self.count
    return @@all.size
  end

  def self.reset_all
    return @@all.clear                  #clear (reset) our owner array
  end

  def say_species
       "I am a #{self.species}."
  end

  def cats
      Cat.all.select do |cat|
          cat.owner == self
      end
  end
 end
