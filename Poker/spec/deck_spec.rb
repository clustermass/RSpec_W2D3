require "deck"
require "rspec"

describe Deck do
  subject(:deck) {Deck.new}
  describe "#initialize" do
      it "sets the deck variable to an array with length 52" do
        expect(deck.deck.length).to eq(52)
      end

      it "sets each element of the array as an instance of the card class" do
        expect(deck.deck.all? {|card| card.is_a?(Card)}).to be true
      end

  end

  describe "#shuffle" do
    it "calls #shuffle method on the deck array" do
      expect(deck.deck).to receive(:shuffle)
      deck.shuffle
    end
  end

  describe "#give_hand" do
    it "returns array with instances of cards" do
      expect(deck.give_hand.all?{|card| card.is_a?(Card)}).to be true
    end

    it "returns array of length five" do
      expect(deck.give_hand.length).to eq(5)
    end


  end

end
