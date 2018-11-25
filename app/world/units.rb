class World::Units
  extend Forwardable
  include Singleton

  def_delegators :@units, :each, :clear

  def initialize
    @units = []
  end

  def push(unit)
    @units.push(unit) unless @units.include?(unit)
  end

  def to_s
    @units.map(&:formatted_name).compact.join(', ')
  end
end
