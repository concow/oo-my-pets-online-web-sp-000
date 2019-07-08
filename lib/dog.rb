class Dog

  attr_accessor :mood, :owner
  attr_reader :name           #//getter - Dog reads name, cannot change name
  @@all = []

  def initialize(name, owner, mood = "nervous")
    @name = name              #Dog initializes a dog at creation
    @owner = owner
    @mood = mood
    @@all << self               #add all 'Dog' instances to our class var array
  end

  def self.all

  end

end
