require_relative 'card'
require_relative 'deck'
require_relative 'player'
require_relative 'turn'
require_relative 'card_generator'

new_deck = CardGenerator.new("../data/cards.txt").cards.shuffle

deck1 = Deck.new(new_deck[0..25])
deck2 = Deck.new(new_deck[26..51])

player1 = Player.new("Megan", deck1)
player2 = Player.new("Aurora", deck2)

turn = Turn.new(player1, player2)
turn.start
