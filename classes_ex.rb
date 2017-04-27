class Player
    def initialize(name, health=100)
       @name = name.capitalize
       @health = health 
    end

    def to_s
        "I'm #{@name} with a health of #{@health}."
    end

    def blam
        puts "#{@name} got blammed!"
        @health = @health - 10
    end

    def w00t
        puts "#{@name} got w00ted!"
        @health = @health +15
    end
end




player1 = Player.new("moe")
#puts player1

player2 = Player.new("larry", 60)
#puts player2

player3 = Player.new("curly", 125)
#puts player3

players = []
players.push(player1)
players.push(player2)
players.push(player3)

#puts "You have #{players.length} players"

#players.each do |player|
#    puts player
#end

class Game
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

#player3.blam
#puts player3
#player3.w00t
#puts player3

knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play