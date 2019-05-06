class World::Cells
  extend Forwardable
  include Singleton

  def_delegators :@cells, :each, :clear

  def initialize
    @cells = []
  end

  def push(unit)
    @cells.push(unit) unless @cells.include?(unit)
  end

  def to_s
    @cells.map(&:name).compact.join(', ')
  end

  def descriable_cells
    @cells.map()
  end
end
