# frozen_string_literal: true

require_relative '../item'

# This is the aged brie item class
class AgedBrieItem < Item
  def self.update!(item)
    item.quality += 1 if item.quality < 50
    item.sell_in -= 1
  end
end
