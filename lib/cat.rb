class Cat

  attr_accessor :mood, :owner
  attr_reader :name           #Cat only reads name, can't change its name
  @@all = []

  def initialize(name, owner, mood = "nervous")           #all these upon instantiation of this Cat class
    @name = name              #Cat initializes a cat at creation
    @mood = mood
    @owner = owner
    @@all << self             #add all instances of Cat to our class var
  end

  def self.all
    return @@all
  end
end
