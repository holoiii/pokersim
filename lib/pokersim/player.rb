module Pokersim
  class Player
    attr_accessor :game_state
    attr_accessor :game_history

    def seat
      game_state[:seat]
    end

    def set_game_state(state)
      @game_state = state
    end

    def set_game_history(history)
      @game_history = history
    end

    def action
      raise "Must implement this"
    end
  end
end
