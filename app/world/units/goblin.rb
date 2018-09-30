class World::Units::Goblin < World::Units::Base
  def to_s
    'g'.to_s.colorize(:green)
  end
end
