class World::Maps::Base
  attr_accessor :positions

  def u(name)
    return World::Units::Player.instance if name == :player
    Object.const_get("World::Units::#{ name.capitalize }").new()
  end

  def c(name)
    World::Cells::Factory.build(name)
  end

  def marking
    map = []
    positions.each do |row|
      map << row.dup
    end

    World::Units.instance.each do |unit|
      map[unit.y][unit.x] = unit
    end
    map
  end
end
