class World::Maps::GreatRoadStarting < World::Maps::Base
  def draw
    map =
      [
        [c(:road), c(:road), c(:road),   c(:road), c(:road)],
        [c(:road), c(:road), u(:goblin), c(:road), c(:road)],
        [c(:road), c(:road), c(:road),   c(:road), c(:road)],
        [c(:road), c(:road), u(:player), c(:road), c(:road)],
        [c(:road), c(:road), c(:road),   c(:road), c(:road)],
      ]
  end
end
