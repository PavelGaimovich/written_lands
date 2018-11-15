class World::Quests::Base
  class << self
    attr_reader :result

    def dialog(text, *variants)
      @result = Dialog.new(text, *variants).answer
    end
  end
end
