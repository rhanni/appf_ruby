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

    def play(rounds)
        1.upto(rounds) do |iter|
            puts "------ Round number: #{iter} ------"
            @players_array.each do |player|
                GameTurn.take_turn(player)
                puts player
            end
        end
    end

    def print_stats
        puts "\n---------STATS--------\n"
        strong, wimpy = @players_array.partition {|player| player.strong?}
        puts "\n#{strong.length} strong player(s): \n"
        strong.select{|player| print_player_name_and_health(player)}
        puts "\n#{wimpy.length} wimpy player(s): \n"
        wimpy.select{|player| print_player_name_and_health(player)}

        puts "\n -------RANKINGS-------\n"
        @players_array.sort.each do |player|
            formatted_name = player.name.ljust(20, '.')
            puts "\n #{formatted_name} #{player.score}\n"
        end
    end

    def print_player_name_and_health(player)
        puts  "Name: #{player.name}, Health: #{player.health}"
    end
end
