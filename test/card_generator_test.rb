require 'minitest/autorun'
require 'minitest/pride'
require '../lib/card_generator'

class CardGeneratorTest < Minitest::Test
  def test_it_exists
    filename = "../data/cards.txt"
    cards = CardGenerator.new(filename)

    assert_instance_of CardGenerator, cards
  end

  def test_it_returns_filename
    filename = "../data/cards.txt"
    cards = CardGenerator.new(filename)

    assert_equal "../data/cards.txt", cards.filename
  end

  def test_it_returns_array_of_cards

    filename = "../data/cards.txt"
    cards = CardGenerator.new(filename)

    assert_equal 52, cards.cards.length
  end
end
