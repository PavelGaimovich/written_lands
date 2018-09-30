class World
  include Singleton

  attr_accessor :current_map

  # TODO: Think about randomizer
  # def initialize(rows = 5, cols = 5)
  #   @map = Array.new(rows) { Array.new(cols) }
  #   @map = Map::Randomizer.randomize(@map)
  # end

  def initialize
    @current_map = World::Maps::GreatRoadStarting.new
  end
end
