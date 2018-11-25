class World::Maps::GreatRoadStarting::Part1 < World::Maps::Base
  def initialize
    r = c(:road)
    t = c(:tree)
    b = c(:big_tree)
    l = c(:light_tree)
    n = c(:road)
    w = c(:water)

    def n.action
      World::Maps::GreatRoadStarting::Part2.new.load
    end

    @positions =
      [
        [t, r, n, n, n, n, n, n, n, n, n, n, n, n, t, b, t, l, b],
        [t, b, r, r, r, r, r, r, r, r, r, r, r, r, r, l, t, l, t],
        [l, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, l, b, t],
        [t, l, r, r, r, r, r, r, r, r, r, r, r, r, r, b, t, b, l],
        [b, r, r, r, r, r, r, r, r, r, r, w, r, b, l, t, l, t, t],
        [t, r, r, r, r, r, r, r, r, r, r, w, w, t, w, b, t, l, b],
        [t, b, r, r, r, r, r, r, r, r, r, r, w, w, w, w, w, t, t],
        [t, r, r, r, r, r, r, r, r, r, r, r, w, w, w, w, w, l, b],
        [t, b, r, r, r, r, r, r, r, r, r, w, w, w, w, w, t, b, t],
        [l, r, r, r, r, r, r, r, r, r, r, w, w, w, w, r, r, b, t],
        [t, l, r, r, r, r, r, r, r, r, r, w, w, w, r, r, r, r, l],
        [b, r, r, r, r, r, r, r, r, r, r, r, w, w, r, r, r, t, t],
        [t, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, l, b],
        [t, b, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, t],
        [t, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, r, l, b],
      ]

    @map_text = []
    @map_text << <<~HEREDOC
      What would be your next steps?
      Find dragon - kill it, find princess - marry her.
      Or marry dragon, make some lizard kids... Quest only starts!
    HEREDOC
  end

  def place_units
    u(:player).place(9, 14)

    u(:frog).place(7, 5)
    u(:frog).place(4, 4)
    u(:frog).place(14, 10)
  end
end
