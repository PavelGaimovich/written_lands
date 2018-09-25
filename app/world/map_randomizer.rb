class World::MapRandomizer
  PLACES = {
    forest: ['tree', 'light_tree', 'big_tree']
  }
  PLACES.default = ['tree', 'light_tree', 'big_tree', 'road', 'rock']

  def self.randomize(map, options={})
    map.map do |row|
      row.map do |column|
        column = place_block(options)
      end
    end
  end

  private

  def self.place_block(options)
    blocks = PLACES[options[:place]]
    name = blocks[Random.rand(blocks.size)]
    BlocksFactory.build(name)
  end
end
