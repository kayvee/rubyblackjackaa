require_relative 'card'

# Represents a deck of playing cards.
class Deck
  # Returns an array of all 52 playing cards.
  def self.all_cards
    card_set = []

    Card.suits.each do |suit|
      Card.values.each do |value|
        card_set << Card.new(suit, value)
      end
    end

    card_set
  end

  def initialize(cards = Deck.all_cards)
    @cards = cards
    # 51.times do
    #   cards << Card.new
    # end
  end

  # Returns the number of cards in the deck.
  def count
    @cards.count
  end

  # Takes `n` cards from the top of the deck.
  def take(n)
    raise "not enough cards" if n > count

    @cards.shift(n)
  end

  # Returns an array of cards to the bottom of the deck.
  def return(cards)
    @cards.concat(cards)
  end
end
