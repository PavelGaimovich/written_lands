class World::Maps::GreatRoadStarting < World::Maps::Base
  def draw
    r = c(:road)
    t = c(:tree)
    b = c(:big_tree)
    l = c(:light_tree)
    g = u(:goblin)
    x = u(:player)

    map =
      [
        [t, r, r, r, r, r, r, r, r, r, r, l, b],
        [t, b, r, r, r, r, g, r, r, r, r, r, t],
        [l, r, r, r, r, r, r, r, r, r, r, b, t],
        [t, l, r, r, r, r, r, r, r, r, r, r, l],
        [b, r, r, r, r, r, r, r, r, r, r, t, t],
        [t, r, r, r, r, r, x, r, r, r, r, l, b],
        [t, b, r, r, r, r, r, r, r, r, r, r, t],
      ]
  end
end
