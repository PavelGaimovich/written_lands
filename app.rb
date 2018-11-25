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

class App
  def initialize
    World::Maps::GreatRoadStarting.new.load

    while true do
      World.instance.current_map.print
      World::Units::Player.instance.make(Controls.read_key.to_sym)
    end
  end
end

App.new
