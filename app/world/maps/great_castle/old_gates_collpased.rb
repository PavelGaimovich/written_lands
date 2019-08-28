class World::Maps::GreatCastle::OldGatesCollapsed < World::Maps::Base
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
        [t,t,t,t,t,d,d,r,r,r,r,r,d,t,t,t,t,t,t,t,t],
        [t,t,t,t,t,d,d,o,r,o,r,o,d,d,t,t,t,t,t,t,t],
        [t,t,t,t,t,t,o,o,o,o,o,o,o,t,t,t,t,t,t,t,t],
        [t,t,t,t,t,r,o,o,o,o,o,o,o,d,t,t,t,t,t,t,t],
        [t,t,t,t,t,d,d,r,r,r,o,r,d,d,t,t,t,t,t,t,t],
        [t,t,t,t,t,d,t,r,o,r,r,r,d,t,t,t,t,t,t,t,t],
        [t,t,t,t,t,t,d,r,r,r,r,r,d,d,t,t,t,t,t,t,t],
        [t,t,t,t,t,d,d,r,r,r,r,r,d,d,t,t,t,t,t,t,t],
      ]

    @map_text = []
    @map_text << <<~HEREDOC
      After you pass Old gates collapsed.

      Maybe it was you destiny to choose this path.
      Or it can be bad luck?
    HEREDOC

    def place_units
      u(:player).place(9, 2)
    end
  end
end
