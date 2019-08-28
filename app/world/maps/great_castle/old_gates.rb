class World::Maps::GreatCastle::OldGates < World::Maps::Base
  def initialize
    r = c(:road)
    o = c(:rock)
    n = c(:road)

    def t
      [c(:big_tree), c(:tree), c(:light_tree)][rand(3)]
    end

    def d
      [c(:big_tree), c(:tree), c(:light_tree), c(:road)][rand(4)]
    end

    def n.action
      World::Maps::GreatCastle::OldGatesCollapsed.new.load
    end

    @positions =
      [
        [t,t,t,t,t,t,t,n,n,n,n,n,t,t,t,t,t,t,t,t,t],
        [t,t,t,t,t,t,d,r,r,r,r,r,d,t,t,t,t,t,t,t,t],
        [t,t,t,t,t,d,d,r,o,o,o,r,d,t,t,t,t,t,t,t,t],
        [t,t,t,t,t,d,d,o,o,o,o,o,d,d,t,t,t,t,t,t,t],
        [t,t,t,t,t,t,o,o,n,n,n,o,o,t,t,t,t,t,t,t,t],
        [t,t,t,t,t,r,o,o,r,r,r,o,o,d,t,t,t,t,t,t,t],
        [t,t,t,t,t,d,d,r,r,r,r,r,d,d,t,t,t,t,t,t,t],
        [t,t,t,t,t,d,t,r,r,r,r,r,d,t,t,t,t,t,t,t,t],
        [t,t,t,t,t,t,d,r,r,r,r,r,d,d,t,t,t,t,t,t,t],
        [t,t,t,t,t,d,d,r,r,r,r,r,d,d,t,t,t,t,t,t,t],
      ]

    @map_text = []
    @map_text << <<~HEREDOC
      You come to old gates.

      Great Gray castle starts after them.
    HEREDOC

    def place_units
      u(:player).place(9, 8)
    end
  end
end
