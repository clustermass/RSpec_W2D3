class Card
  attr_reader :suit, :value
  attr_accessor :faceup
  
  def initialize(suit, value)
    @suit = suit
    @value = value
    @faceup = false
  end
  
end