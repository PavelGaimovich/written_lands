class World::Units::Frog < World::Units::Base
  def symbol
    'f'
  end

  def default_color
    :green
  end

  def action
    World::Quests::Frog.start
    true
  end
end
