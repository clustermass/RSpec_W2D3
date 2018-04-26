require_relative 'card'

class Deck
  attr_reader :deck
  def initialize
    @deck = []
    create_deck
    shuffle
  end

  def create_deck
    deck = []
    [:hearts, :spades, :diamonds, :clubs].each do |suit|
      [14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2].each do |value|
        deck << Card.new(suit, value)
      end
    end
    @deck = deck
  end

  def shuffle
    @deck = @deck.shuffle
  end

  def give_card
      cards = @deck[0]
      @deck = @deck[1..-1]
  end

  def give_hand
    unless @deck.length < 5
      cards = @deck[0..4]
      @deck = @deck[5..-1]
      return cards
    end
  end

  def reset_deck
    create_deck
    shuffle
  end

end
