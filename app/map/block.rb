module Map::Block
  def to_s
    symbol.to_s.colorize(color.to_sym)
  end
end
