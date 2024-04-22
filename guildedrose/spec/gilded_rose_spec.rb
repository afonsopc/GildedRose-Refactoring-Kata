# frozen_string_literal: true

require 'rspec'
require_relative '../src/gilded_rose'

# rubocop:disable Metrics/BlockLength
describe GildedRose do
  it 'should correctly update a normal item' do
    beer = Item.new 'Cerveja', 5, 10
    items = [beer]

    guilded_rose = GildedRose.new(items)

    guilded_rose.update_quality

    expect(items[0].quality).to eq 9
    expect(items[0].sell_in).to eq 4

    guilded_rose.update_quality

    expect(items[0].quality).to eq 8
    expect(items[0].sell_in).to eq 3
  end

  it 'should correcly update a Aged Brie item' do
    aged_brie = Item.new AGED_BRIE, 5, 10
    items = [aged_brie]

    guilded_rose = GildedRose.new(items)

    guilded_rose.update_quality

    expect(items[0].quality).to eq 11
    expect(items[0].sell_in).to eq 4

    100.times { guilded_rose.update_quality }

    expect(items[0].quality).to eq 50
    expect(items[0].sell_in).to eq(-96)
  end

  it 'should correctly update a Sulfuras item' do
    sulfuras = Item.new SULFURAS, 5, 10
    items = [sulfuras]

    expect(items[0].quality).to eq 10

    guilded_rose = GildedRose.new(items)

    guilded_rose.update_quality

    expect(items[0].quality).to eq 10
    expect(items[0].sell_in).to eq 5

    100.times { guilded_rose.update_quality }

    expect(items[0].quality).to eq 10
    expect(items[0].sell_in).to eq 5
  end

  it 'should correctly update a Backstage Pass item' do
    backstage_pass = Item.new BACKSTAGE_PASS, 20, 10

    items = [backstage_pass]

    guilded_rose = GildedRose.new(items)

    guilded_rose.update_quality

    expect(items[0].quality).to eq 11
    expect(items[0].sell_in).to eq 19

    5.times { guilded_rose.update_quality }

    expect(items[0].quality).to eq 16
    expect(items[0].sell_in).to eq 14

    4.times { guilded_rose.update_quality }

    expect(items[0].quality).to eq 20
    expect(items[0].sell_in).to eq 10

    2.times { guilded_rose.update_quality }

    expect(items[0].quality).to eq 24
    expect(items[0].sell_in).to eq 8

    3.times { guilded_rose.update_quality }

    expect(items[0].quality).to eq 30
    expect(items[0].sell_in).to eq 5

    3.times { guilded_rose.update_quality }

    expect(items[0].quality).to eq 39
    expect(items[0].sell_in).to eq 2

    guilded_rose.update_quality

    expect(items[0].quality).to eq 42
    expect(items[0].sell_in).to eq 1

    guilded_rose.update_quality

    expect(items[0].quality).to eq 45
    expect(items[0].sell_in).to eq 0

    guilded_rose.update_quality

    expect(items[0].quality).to eq 0
    expect(items[0].sell_in).to eq(-1)
  end

  it 'should correctly update a Conjured item' do
    conjured = Item.new CONJURED, 5, 10
    items = [conjured]

    guilded_rose = GildedRose.new(items)

    guilded_rose.update_quality

    expect(items[0].quality).to eq 8
    expect(items[0].sell_in).to eq 4

    guilded_rose.update_quality

    expect(items[0].quality).to eq 6
    expect(items[0].sell_in).to eq 3

    guilded_rose.update_quality

    expect(items[0].quality).to eq 4
    expect(items[0].sell_in).to eq 2

    guilded_rose.update_quality

    expect(items[0].quality).to eq 2
    expect(items[0].sell_in).to eq 1

    guilded_rose.update_quality

    expect(items[0].quality).to eq 0
    expect(items[0].sell_in).to eq 0

    guilded_rose.update_quality
  end
end
# rubocop:enable Metrics/BlockLength
