class Card
  attr_reader :suit, :value

  def initialize(value, suit)
    @value = value
    @suit = suit
  end
  
  def eql?(other_card)
    return false unless other_card.kind_of?(self.class)
    @value == other_card.value && @suit == other_card.suit
  end
  alias :== :eql?
end
