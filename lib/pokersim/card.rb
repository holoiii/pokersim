module Pokersim
  class Card
    attr_accessor :rank
    attr_accessor :suit

    SUITS = %w{S C D H}
    RANKS = %w{2 3 4 5 6 7 8 9 T J Q K A}

    def initialize(rank, suit)
      raise "A card must have a rank and a suit." unless rank && suit
      raise "Invalid suit" unless SUITS.include?(suit.to_s)
      raise "Invalid rank" unless RANKS.include?(rank.to_s)
      @rank = rank.to_s
      @suit = suit.to_s
    end

    def to_s
      rank + suit
    end
  end
end
