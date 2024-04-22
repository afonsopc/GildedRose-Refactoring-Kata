# frozen_string_literal: true

require_relative '../item'

# This is the normal item class
class NormalItem < Item
  def self.update!(item)
    item.quality -= 1
    item.sell_in -= 1
  end
end
