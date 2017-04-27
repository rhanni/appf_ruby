class Player

    attr_accessor :name
    attr_reader :health

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

    def score
        @score = @name.length + @health
    end
    
end


if __FILE__ == $0
  player = Player.new("moe")
  puts player.name
  puts player.health
  player.w00t
  puts player.health
  player.blam
  puts player.health
  puts player.score
end