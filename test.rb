# class Beta
#   def initialize
#     abc = Beta::Abc.new
#     puts abc.name
#     puts abc.color
#     puts abc.symbol
#   end
# end
#
# class Beta::Base
#   def hola
#   end
# end
#
# class Beta::Abc < Beta::Base
#   attr_accessor :name, :symbol, :color
#
#   def initialize
#     @name = 'alalla'
#     @color = :gray
#     @symbol = 'o'
#   end
# end
#
# Beta.new
require 'colorize'
require 'byebug'

class Map
  attr_accessor :map

  def initialize(rows = 5, cols = 5)
    @map = Array.new(rows) { Array.new(cols) }
    @map = [[Map::Rock.new, Map::Rock.new]]
  end

  def print
    @map.each do |row|
      puts row.join('')
    end
  end
end

class Map::Block
  def to_s
    # byebug
    symbol.to_s.colorize(color)
  end
end

class Map::Rock < Map::Block
  attr_accessor :symbol, :color

  def initialize
    @color = :gray
    @symbol = 'o'
  end
end

class App
  def initialize
    @map = Map.new(5,5)
    @map.print
  end
end

App.new
r = Map::Rock.new
p r.symbol
p r.color
puts ['aaa'.colorize(:brown), 'aaa'.colorize(:green), 'aaa'.colorize(:gray)].join('')
