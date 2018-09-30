class World::Maps::Base
  attr_accessor :map

  def u(name)
    return World::Units::Player.instance if name == :player
    Object.const_get("World::Units::#{ name.capitalize }").new()
  end

  def c(name)
    World::Cells::Factory.build(name)
  end

  def marking
    full_map = []
    map.each do |row|
      full_map << row.dup
    end

    World::Units.instance.each do |unit|
      full_map[unit.y][unit.x] = unit
    end
    full_map
  end
end
