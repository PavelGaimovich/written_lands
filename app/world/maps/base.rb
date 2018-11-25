class World::Maps::Base
  attr_accessor :positions, :start_text, :map_text

  def u(name, **args)
    # TODO: Do something with this if
    if name == :player
      unit = World::Units::Player.instance
    else
      unit = Object.const_get("World::Units::#{ name.capitalize }").new(args)
    end

    World::Units.instance.push(unit)

    unit
  end

  def c(name)
    World::Cells::Factory.build(name)
  end

  def print
    puts `clear`

    marking.each { |row| puts row.join('') }

    puts ''
    puts 'You'.colorize(:blue) << ' see ' << World::Units.instance.to_s
    puts ''

    puts map_text.join("\n")
  end

  def marking
    map = dup_map

    World::Units.instance.each do |unit|
      map[unit.y][unit.x] = unit
    end

    map
  end

  def dup_map
    positions.map do |row|
      row.dup
    end
  end

  def load
    World.instance.current_map = self
    World::Units.instance.clear
    place_units
  end

  def place_units

  end
end
