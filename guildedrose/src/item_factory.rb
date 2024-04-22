# frozen_string_literal: true

require_relative 'items/aged_brie'
require_relative 'items/backstage_pass'
require_relative 'items/sulfuras'
require_relative 'items/conjured'
require_relative 'items/normal'

ITEMS = {
  'Aged Brie' => AgedBrieItem,
  'Backstage passes to a TAFKAL80ETC concert' => BackstagePassItem,
  'Sulfuras, Hand of Ragnaros' => SulfurasItem,
  'Conjured' => ConjuredItem
}.freeze

# This is the item factory class
class ItemFactory
  def self.call(name)
    return ITEMS[name] if ITEMS[name]

    NormalItem
  end
end
