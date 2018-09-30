class World::Cells::Factory
  def self.build(name)
    OpenStruct.new(
      color: cells[name.to_s]['color'],
      symbol: cells[name.to_s]['symbol'],
      impassable: cells[name.to_s]['impassable']
    ).extend(World::Cells::Base)
  end

  def self.list
    self.cells.keys.map(&:to_s)
  end

  private

  def self.cells
    @cells ||= YAML::load_file(File.join(__dir__, 'cells.yml'))['cells']
  end
end
