class World::Quests::Statuses < World::Quests::Base
  include Singleton

  attr_accessor :statuses

  def initialize
    @statuses = {}
  end

  def register(quest, chosen)
    @statuses[quest.class.name] ||= []
    @statuses[quest.class.name] << chosen
  end

  def check(quest)
    @statuses[quest.class.name].last
  end
end
