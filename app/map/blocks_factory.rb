class BlocksFactory
  def self.build(name)
    OpenStruct.new(
      color: blocks[name]['color'],
      symbol: blocks[name]['symbol']
    ).extend(Map::Block)
  end

  private

  def self.blocks
    @blocks ||= YAML::load_file(File.join(__dir__, 'blocks.yml'))['blocks']
  end
end
