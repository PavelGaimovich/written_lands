class World::Maps::Base
  attr_accessor :positions, :start_text

  def u(name, **args)
    return World::Units::Player.instance if name == :player
    Object.const_get("World::Units::#{ name.capitalize }").new(args)
  end

  def c(name)
    World::Cells::Factory.build(name)
  end

  def print
    puts `clear`

    marking.each { |row| puts row.join('') }
    puts ''
    puts start_text
    puts ''
    puts 'You'.colorize(:blue) << ' see ' << World::Units.instance.to_s
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
end
