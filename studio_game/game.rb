require_relative 'player'

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
        puts "There are #{@players_array.length} in #{@name}"
        @players_array.each do |player|
            puts player
        end
        
    end
end