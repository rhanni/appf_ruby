require_relative 'player'
require_relative 'die'

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
        die = Die.new()
        puts "There are #{@players_array.length} in #{@name}"
        @players_array.each do |player|
            puts player
            case die.roll
                when 1..2
                    player.blam
                when 3..4
                    puts "#{player} was skipped."
                else
                    player.w00t
            end
        end
        
    end
end
