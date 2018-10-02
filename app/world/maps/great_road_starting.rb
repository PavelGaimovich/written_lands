class World::Maps::GreatRoadStarting < World::Maps::Base
  def initialize
    r = c(:road)
    t = c(:tree)
    b = c(:big_tree)
    l = c(:light_tree)

    @positions =
      [
        [t, r, r, r, r, r, r, r, r, r, r, l, b],
        [t, b, r, r, r, r, r, r, r, r, r, r, t],
        [l, r, r, r, r, r, r, r, r, r, r, b, t],
        [t, l, r, r, r, r, r, r, r, r, r, r, l],
        [b, r, r, r, r, r, r, r, r, r, r, t, t],
        [t, r, r, r, r, r, r, r, r, r, r, l, b],
        [t, b, r, r, r, r, r, r, r, r, r, r, t],
      ]

    u(:goblin, name: 'Creyg').place(6, 1)
    u(:player).place(6, 5)

    @start_text = <<~HEREDOC
      Hello traveller!

      Welcome to Written lands! Your journey starts today!
      Use arrow keys to move
    HEREDOC
  end
end
