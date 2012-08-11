require 'pokersim'

describe Pokersim::Deck do
  let(:deck) { Pokersim::Deck.new }

  describe "initialize" do
    it "should initialize with 52 cards" do
      deck.cards.size.should == 52
      deck.cards.first.should be_a_kind_of(Pokersim::Card)
    end
  end

  describe "#shuffle" do
    it "should randomly reorder the deck of cards" do
      original_order = deck.cards.dup
      deck.shuffle
      deck.cards.should_not == original_order
    end
  end

  describe "#deal" do
    it "should remove the given number of cards from the deck" do
      cards = deck.deal(2)
      cards.should be_all{|card| card.is_a?(Pokersim::Card)}
      cards.size.should == 2
    end
  end
end
