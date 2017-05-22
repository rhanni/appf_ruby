require_relative 'player'
require_relative 'die'
require_relative 'game_turn'

class Game
    attr_accessor :name, :players_array

    def initialize(name)
        @name = name
        @players_array = []
    end

    def add_player(player)
        @players_array.push(player)
    end

    def play
        @players_array.each do |player|
            GameTurn.take_turn(player)
            puts player
        end
    end
end
