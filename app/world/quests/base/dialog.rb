class World::Quests::Base::Dialog
  def initialize(*text_and_variants)
    @text, *@variants = *text_and_variants
    @chosen = 0
    @answered = false
  end

  def answer
    say @text.colorize(:light_yellow)
    show_choices(@variants)

    while !@answered
      World.instance.current_map.print
      make(Controls.read_key.to_sym)
      show_choices(@variants)
    end

    clear_last_rows(@variants.size + 1)
    return @chosen
  end

  def show_choices(variants)
    variants.each.with_index do |v,index|
      v = variants[@chosen].colorize(color: :black, background: :white) if index == @chosen
      say v
    end
  end

  def say(text)
    World.instance.current_map.map_text << text
  end

  def make(move)
    @variants.size
    if [:up, :right].include?(move)
      @chosen += 1
    elsif [:down, :left].include?(move)
      @chosen -= 1
    elsif :enter
      @answered = true
    end

    @chosen = 0 if @chosen >= @variants.size
    @chosen = @variants.size - 1 if @chosen < 0

    clear_last_rows(@variants.size)
  end

  def clear_last_rows(number)
    map_text = World.instance.current_map.map_text
    map_text.slice!(map_text.size - number, number)
  end
end
