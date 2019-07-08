class Cat

  attr_accessor :mood, :owner
  attr_reader :name           #Cat only reads name, can't change its name

  def initialize(name)
    @name = name              #Cat initializes a cat at creation

  end
end
