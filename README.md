# Game

## Welcome to Written lands!

Written lands is experiment to create simple, easy to read game base for console.

You can make pull requests and free add your maps, cells and units.

### Controls
Keyboard keys: Up, Down, Left, Right.

### Example how add Map
```ruby
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
```

### Create your own units
```ruby
class World::Units::Goblin
  def to_s
    'g'.to_s.colorize(:green)
  end
end
```

Objective of the project to show best side of Clean code and grow up from console to web game with all content migrated to it!
