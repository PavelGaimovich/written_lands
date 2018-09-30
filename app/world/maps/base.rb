class World::Maps::Base
  attr_accessor :map

  def u(name)
    Object.const_get("World::Units::#{ name.capitalize }").new()
  end

  def c(name)
    World::Cells::Factory.build(name)
  end

  def marking
    full_map = map.dup
    World::Units.instance.each do |unit|
      full_map[unit.y][unit.x] = unit
    end
    full_map
  end
end
