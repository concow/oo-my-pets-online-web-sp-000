class Cat

  attr_accessor :mood, :owner
  attr_reader :name           #Cat only reads name, can't change its name

  def initialize(name, owner, mood = "nervous")           #all these upon instantiation of this Cat class
    @name = name              #Cat initializes a cat at creation
    @mood = "nervous"
    @owner = owner

  end
end
