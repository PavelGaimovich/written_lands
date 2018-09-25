# Game

## Welcome to Written lands!

Written lands is experiment to create simple, easy to read game base for console.

You can make pull requests and free add your maps, cells and units.

### Example how add Map
```ruby
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
