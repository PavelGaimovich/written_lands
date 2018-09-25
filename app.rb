require 'colorize'
require 'byebug'
require 'yaml'
require "ostruct"

require_relative 'app/map'
require_relative 'app/map/block'
require_relative 'app/map/blocks_factory'
require_relative 'app/map/randomizer'


class App
  def initialize
    @map = Map.new(15,15)
    @map.print
  end
end

App.new
