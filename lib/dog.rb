class Dog
  attr_accessor :mood, :owner
  attr_reader :name           #//getter - Dog reads name, cannot change name
  def initialize(name, owner, mood)
    @name = name              #Dog initializes a dog at creation
    @owner = owner
    @mood = mood
  end

end
