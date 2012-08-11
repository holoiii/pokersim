module Pokersim
  class Game
    def initialize
      #6 player game, randomized order
      #
      players = []
      6.times do
        players << Pokersim::Player.new
      end
    end
  end
end
