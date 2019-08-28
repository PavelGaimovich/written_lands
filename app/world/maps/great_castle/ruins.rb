class World::Maps::GreatCastle::Ruins < World::Maps::Base
  def initialize
    r = c(:road)
    t = c(:tree)
    b = c(:big_tree)
    l = c(:light_tree)
    o = c(:rock)

    n = c(:road)

    def n.action
      World::Maps::GreatCastle::OldGates.new.load
    end

    forest_line1 = [b, t, t, b, l, l, t, b, t, t, b, l]
    forest_line2 = [b, t, l, b, l, t, b, t, t, b, l, b]

    @positions =
      [
        [t, r, n, n, n, n, n, n, n, n, n, l, b, l, t, l, b, t, l, b, l, t, l, b, t, l, b] + forest_line1 + forest_line2,
        [t, b, r, r, r, r, r, r, r, r, r, r, t, b, l, t, b, t, t, b, l, t, b, t, t, b, l] + forest_line2 + forest_line1,
        [l, r, r, r, r, r, r, r, r, r, r, b, t, b, l, t, b, t, t, b, l, t, l, b, t, l, b] + forest_line2 + forest_line1,
        [t, l, r, r, r, r, r, r, r, r, r, r, r, l, t, b, t, t, b, l, l, t, b, t, t, b, l] + forest_line1 + forest_line2,
        [b, r, r, r, r, r, r, r, r, r, r, t, r, r, t, b, r, r, b, l, l, t, l, b, t, l, b] + forest_line1 + forest_line1,
        [t, r, r, r, r, r, r, r, r, r, r, l, b, r, r, r, b, r, l, b, l, t, b, t, t, b, l] + forest_line1 + forest_line2,
        [t, l, r, r, r, r, r, r, r, r, r, r, l, b, r, r, b, r, r, b, l, t, l, b, t, l, b] + forest_line2 + forest_line1,
        [b, r, r, r, r, r, r, r, r, r, r, t, t, l, r, r, t, t, r, r, l, t, l, b, t, l, b] + forest_line2 + forest_line2,
        [t, b, r, r, r, r, r, r, r, r, r, r, t, l, r, r, r, t, l, r, l, t, b, t, t, b, l] + forest_line1 + forest_line2,
        [t, b, r, r, r, r, r, r, r, r, r, r, t, r, r, r, r, t, t, r, l, t, l, b, t, l, b] + forest_line1 + forest_line1,
        [l, r, r, r, r, r, r, r, r, r, r, b, t, r, r, o, o, t, b, r, l, t, b, t, t, b, l] + forest_line2 + forest_line2,
        [t, l, r, r, r, r, r, r, r, r, r, r, l, r, o, l, o, t, r, r, l, t, b, t, t, b, l] + forest_line1 + forest_line1,
        [b, r, r, r, r, r, r, r, r, r, r, t, t, r, o, t, o, t, r, r, l, t, l, b, t, l, b] + forest_line2 + forest_line2,
        [t, r, r, r, r, r, r, r, r, r, r, l, b, r, r, r, r, r, r, l, l, t, b, t, t, b, l] + forest_line2 + forest_line1,
        [t, b, r, r, r, r, r, r, r, r, r, r, t, r, r, r, r, r, t, b, l, t, l, b, t, l, b] + forest_line2 + forest_line2,
        [t, b, r, r, r, r, r, r, r, r, r, r, r, r, r, t, b, t, t, b, l, t, l, b, t, l, b] + forest_line1 + forest_line2,
        [l, r, r, r, r, r, r, r, r, r, r, b, t, l, t, b, t, t, b, l, l, t, l, b, t, l, b] + forest_line2 + forest_line1,
        [t, l, r, r, r, r, r, r, r, r, r, r, l, b, l, t, b, t, t, b, l, t, b, t, t, b, l] + forest_line1 + forest_line1,
        [b, r, r, r, r, r, r, r, r, r, r, t, t, l, t, l, b, t, l, b, l, t, l, b, t, l, b] + forest_line2 + forest_line2,
        [t, r, r, r, r, r, r, r, r, r, r, l, b, b, l, t, b, t, t, b, l, t, b, t, t, b, l] + forest_line1 + forest_line2,
        [t, b, r, r, r, r, r, r, r, r, r, r, t, b, l, t, b, t, t, b, l, t, b, t, t, b, l] + forest_line2 + forest_line1,
      ]

    @map_text = []
    @map_text << <<~HEREDOC
      Air changed flavor.

      Sky became darker.
    HEREDOC
  end

  def place_units
    u(:player).place(6, 17)
  end
end
