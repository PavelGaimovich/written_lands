class World::Units::Player < World::Units::Base
  include Singleton

  def to_s
    'p'.to_s.colorize(:blue)
  end

  def up
    self.y -= 1
  end

  def right
    self.x += 1
  end

  def down
    self.y += 1
  end

  def left
    self.x -= 1
  end

  def nothing; end
end
