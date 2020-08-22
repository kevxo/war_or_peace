require_relative 'card'

class CardGenerator
  attr_reader :filename
  def initialize(filename)
    @filename = filename
  end


  def cards
    cards_array = []
    file = File.open(@filename)
    cards = file.readlines.map do |line|
      line.split(",").map(&:chomp)
    end

    cards.each do |card|
      cards_array << Card.new(card[1].to_sym, card[0], card[2].to_i)
    end

    file.close
    cards_array
  end
end
