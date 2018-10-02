class World::Units
  extend Forwardable
  include Singleton

  def_delegator :@units, :each

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
