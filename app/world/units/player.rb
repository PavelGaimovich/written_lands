class World::Units::Player < World::Units::Base
  def to_s
    'p'.to_s.colorize(:blue)
  end
end
