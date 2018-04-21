class Player

    attr_accessor :name
    attr_reader :health

    def initialize(name, health=100)
       @name = name.capitalize
       @health = health
       @found_treasures = Hash.new(0)
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
        @score = @name.length + @health + points
    end

    def strong?
      @health > 100
    end

    def found_treasure(treasure)
        @found_treasures[treasure.name] += treasure.points
        puts "#{@name} found a #{treasure.name} worth #{treasure.points} points"
        puts "#{@name}'s treasures: #{@found_treasures}"
    end

    def points
        @found_treasures.values.reduce(0, :+)
    end

    def <=>(other)
        other.score <=> score
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
