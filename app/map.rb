class Map
  attr_accessor :map

  def initialize(rows = 5, cols = 5)
    @map = Array.new(rows) { Array.new(cols) }
    @map = Map::Randomizer.randomize(@map)
  end

  def print
    @map.each do |row|
      puts row.join('')
    end
  end
end
