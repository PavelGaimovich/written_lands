class World::Units::Base
  attr_accessor :x, :y

  def initialize
    World::Units.instance.push(self)
  end

  def place(x,y)
    @x = x
    @y = y
  end
end
