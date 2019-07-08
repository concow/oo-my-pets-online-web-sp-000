class Dog

  attr_accessor :mood, :owner
  attr_reader :name           #//getter - Dog reads name, cannot change name
  @@sll = []

  def initialize(name, owner, mood = "nervous")
    @name = name              #Dog initializes a dog at creation
    @owner = owner
    @mood = mood
    @@all << sel;f
  end

end
