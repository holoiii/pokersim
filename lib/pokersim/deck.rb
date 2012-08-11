module Pokersim
  class Deck
    attr_accessor :cards

    SUITS = %w{d h s c}

    def initialize
      @cards = []
      Pokersim::Card::RANKS.each do |rank|
        Pokersim::Card::SUITS.each do |suit|
          @cards << Pokersim::Card.new(rank, suit)
        end
      end
    end

    def shuffle
      cards.shuffle!
    end

    def deal(n)
      cards.pop(n)
    end
  end
end
