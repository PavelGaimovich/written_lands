class World
  attr_accessor :map

  # TODO: Think about randomizer
  # def initialize(rows = 5, cols = 5)
  #   @map = Array.new(rows) { Array.new(cols) }
  #   @map = Map::Randomizer.randomize(@map)
  # end

  def initialize
    @map = World::Maps::GreatRoadStarting.new
  end

  def print
    puts `clear`
    @map.marking.each do |row|
      puts row.join('')
    end
  end
  #
  # def read_keys
  #   command = Controls.read_key
  #   @map.player_event(command)
  # end
end
