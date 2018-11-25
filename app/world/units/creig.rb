require_relative "goblin"

class World::Units::Creig < World::Units::Goblin
  def initialize(name)
    super
    @name = "Creig"
  end

  def action
    World::Quests::Creig.start
    true
  end
end
