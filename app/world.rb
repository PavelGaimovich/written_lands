class World
  include Singleton

  attr_accessor :current_map, :player

  # TODO: Think about randomizer
  # def initialize(rows = 5, cols = 5)
  #   @map = Array.new(rows) { Array.new(cols) }
  #   @map = Map::Randomizer.randomize(@map)
  # end

  def initialize
    @current_map = World::Maps::GreatRoadStarting.new
  end

  def player
    World::Units::Player.instance
  end
end
