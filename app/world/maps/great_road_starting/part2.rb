require_relative "../../quests"
require_relative "../../quests/base"

class World::Maps::GreatRoadStarting::Part2 < World::Maps::Base
  def initialize
    r = c(:road)
    t = c(:tree)
    b = c(:big_tree)
    l = c(:light_tree)

    s1 = c(:sign)

    def s1.action
      World::Quests::Base.dialog('The Great Gray Castle')
      true
    end

    s2 = c(:sign)

    def s2.action
      World::Quests::Base.dialog('Red Carrots Village')
      true
    end

    @positions =
      [
        [t, t, t, r, r, r, t, t, l, b, l, t, t, t, l, t, l, b, r, r, r, t, b, t],
        [t, b, r, r, r, r, b, l, b, t, b, b, b, t, l, b, t, r, r, r, r, b, t, t],
        [l, r, r, r, r, r, r, r, t, b, t, l, t, b, r, r, r, r, r, r, r, r, l, b],
        [t, l, r, r, r, r, r, r, b, t, l, t, r, r, r, r, r, r, r, r, r, r, r, l],
        [b, r, r, r, r, r, r, r, r, l, b, r, r, t, r, r, r, r, r, r, r, r, t, t],
        [t, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, l, b],
        [t, b, r, r, r, r, r, r, r, r, r, r, r, t, r, r, r, r, r, r, r, r, r, l],
        [t, r, r, r, r, r, r, r, r, l, r, r, t, r, r, r, r, r, r, r, r, r, l, b],
        [t, b, r, r, r, r, r, r, r, r, r, t, r, r, r, r, r, r, r, r, r, r, r, t],
        [l, r, r, r,s1, r, r, r, r, r, l, b, b, r, r, r, r, r, r, r,s2, r, b, t],
        [t, l, t, t, r, r, r, r, r, r, r, t, l, r, r, r, r, r, r, r, r, r, r, l],
        [b, t, b, r, r, r, r, r, r, r, r, b, r, r, r, r, r, r, r, r, r, r, t, t],
        [t, l, b, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, l, b],
        [t, b, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, t],
        [t, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, l, b],
      ]

    @map_text = []
    @map_text << "This is only intro, then you get off from"
    @map_text << " Great road ".colorize(:yellow)
    @map_text << "your choices will affect your future and will change game flow."
  end

  def place_units
    u(:player).place(15, 14)
  end
end
