class Hand
  def initialize(deck)
    @deck = deck
    @hand = @deck.give_hand.sort_by{|card| card.value}.reverse
    @cards_seq = [14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2]
  end

  def replace_hand

    @hand[]

    @hand.sort_by!{|card| card.value}.reverse
  end

  def drop

  end


  def check_combinations
    #royal flush
    indexes = []
    temp_suite = @hand.first.suite
    if @hand.all? {|card| card.suite == temp_suite}
      @hand.each_with_index do |card, idx|
        unless idx + 1 == @hand.length
          indexes << idx unless card.value == @hand[idx+1].value - 1
        end
      end
    end

end
