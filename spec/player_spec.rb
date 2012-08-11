require 'pokersim'

describe Pokersim::Player do
  let(:player) { Pokersim::Player.new }

  describe "#set_game_state" do
    it "should set the game state" do

    end
  end

  describe "#set_game_history" do
    it "should set the game history" do

    end
  end

  describe "#action" do
    it "should raise an error if not implemented" do
      expect {
        player.action
      }.to raise_error
    end
  end
end
