class World::Units::Base
  attr_accessor :x, :y
  attr_reader :name

  def initialize(name: nil)
    @name = name
    @color = default_color
  end

  def place(x,y)
    @x = x
    @y = y
  end

  def to_s
    symbol.to_s.colorize(default_color)
  end

  def formatted_name
    class_name = self.class.name.split('::').last

    if name === nil
      class_name
    else
      "#{ name } the #{ class_name }"
    end.colorize(default_color)
  end

  def default_color
    :gray
  end

  def action
    true
  end
end
