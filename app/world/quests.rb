class World::Quests
  include Singleton

  attr_accessor :statuses

  def initialize
    @statuses = {}
  end
end
