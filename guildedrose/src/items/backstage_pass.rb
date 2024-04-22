# frozen_string_literal: true

require_relative '../item'

# This is the backstage pass item class
class BackstagePassItem < Item
  def self.update!(item)
    item.quality += 1
    item.quality += 1 if item.sell_in <= 10
    item.quality += 1 if item.sell_in <= 5
    item.quality = 0 if item.sell_in.negative? || item.sell_in.zero?
    item.sell_in -= 1
  end
end
