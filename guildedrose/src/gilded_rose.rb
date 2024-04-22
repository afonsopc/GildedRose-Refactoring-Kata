# frozen_string_literal: true

AGED_BRIE = 'Aged Brie'
BACKSTAGE_PASS = 'Backstage passes to a TAFKAL80ETC concert'
SULFURAS = 'Sulfuras, Hand of Ragnaros'
CONJURED = 'Conjured'

require_relative 'item_factory'

# GildedRose class
class GildedRose
  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each { |item| ItemFactory.call(item.name).update!(item) }
  end
end
