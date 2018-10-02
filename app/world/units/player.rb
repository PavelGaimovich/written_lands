class World::Units::Player < World::Units::Base
  include Singleton

  def symbol
    'p'
  end

  def default_color
    :blue
  end

  def formatted_name
    nil
  end

  def up
    next_place(@x, @y -1)
  end

  def right
    next_place(@x + 1, @y)
  end

  def down
    next_place(@x, @y + 1)
  end

  def left
    next_place(@x - 1, @y)
  end

  def nothing; end

  def next_place(x,y)
    map = World.instance.current_map.positions

    if y >= map.size ||
      y < 0 ||
      x >= map[0].size ||
      x < 0 ||
      map[y][x].impassable == true

      return
    end

    place(x,y)
  end
end
