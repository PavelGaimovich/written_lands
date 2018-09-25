class World::Maps::Base
  def u(name)
    Object.const_get("World::Units::#{ name.capitalize }").new
  end

  def c(name)
    World::Cells::Factory.build(name)
  end
end
