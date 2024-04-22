# frozen_string_literal: true

require_relative '../item'

# This is the conjured item class
class ConjuredItem < Item
  def self.update!(item)
    item.quality -= 2
    item.sell_in -= 1
  end
end
