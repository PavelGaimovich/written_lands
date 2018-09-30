require 'colorize'
require 'byebug'
require 'yaml'
require "ostruct"
require "require_all"
require 'singleton'
require 'forwardable'

require_relative 'app/world'
require_all 'app/world'
require_relative 'app/controls'
# require_all 'app/world/units'
# require_all 'app/world/maps'
# require_relative 'app/world/block'
# require_relative 'app/map/blocks_factory'
# require_relative 'app/map/randomizer'


class App
  def initialize
    @world = World.instance

    while true do
      @world.current_map.print
      World::Units::Player.instance.send(Controls.read_key.to_sym)
    end
  end
end

App.new
