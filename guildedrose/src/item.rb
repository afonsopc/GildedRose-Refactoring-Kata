# frozen_string_literal: true

# This is the item class
class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def to_s
    "#{@name}, #{@sell_in}, #{@quality}"
  end

  def self.update!(_item)
    raise Exception('Update method not implemented')
  end
end
