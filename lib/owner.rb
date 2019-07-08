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

  def buy_cat(name)              #can buy a cat that is an instance of the Cat class
    Cat.new(name, self)    #instantiated new instance, with method calls to name, and self (owner in this case)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def cats
    Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end

  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end

  def list_pets
    number_of_dogs = self.dogs.count
    number_of_cats = self.cats.count
    return "I have #{number_of_dogs} dog(s), and #{number_of_cats} cat(s)."
  end

  def sell_pets
    all_pets = self.cats + self.dogs
    all_pets.each do |pet|
        sell_pet(pet)
    end
  end

  def sell_pet(pet)
    pet.owner = nil
    pet.mood = "nervous"
  end

  def self.reset_all
    self.all.clear
  end
end
