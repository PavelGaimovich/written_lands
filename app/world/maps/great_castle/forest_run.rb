class World::Maps::GreatCastle::ForestRun < World::Maps::Base
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
      times_showed_old_gates_map = World::Quests.instance.statuses[:times_showed_old_gates_map].to_i

      if times_showed_old_gates_map == 2
        World::Maps::GreatCastle::OldGates.new.load
      else
        times_showed_old_gates_map += 1
        World::Quests.instance.statuses[:times_showed_old_gates_map] = times_showed_old_gates_map
        World::Maps::GreatCastle::ForestRun.new.load
      end
    end

    @positions =
      [
        [t,t,t,t,t,t,t,n,n,n,n,n,t,t,t,t,t,t,t,t,t],
        [t,t,t,t,t,t,d,r,r,r,r,r,d,t,t,t,t,t,t,t,t],
        [t,t,t,t,t,d,d,r,r,r,r,r,d,t,t,t,t,t,t,t,t],
        [t,t,t,t,t,d,d,r,r,r,r,r,d,d,t,t,t,t,t,t,t],
        [t,t,t,t,t,t,d,r,r,r,r,r,d,t,t,t,t,t,t,t,t],
        [t,t,t,t,t,r,d,r,r,r,r,r,d,d,t,t,t,t,t,t,t],
        [t,t,t,t,t,d,d,r,r,r,r,r,d,d,t,t,t,t,t,t,t],
        [t,t,t,t,t,d,t,r,r,r,r,r,d,t,t,t,t,t,t,t,t],
        [t,t,t,t,t,t,d,r,r,r,r,r,d,d,t,t,t,t,t,t,t],
        [t,t,t,t,t,d,d,r,r,r,r,r,d,d,t,t,t,t,t,t,t],
      ]

    @map_text = []

    def place_units
      u(:player).place(9, 8)
    end
  end
end
