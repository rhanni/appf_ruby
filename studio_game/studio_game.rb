require_relative 'game.rb'

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

knuckleheads = Game.new("Knuckleheads")
knuckleheads.load_players(ARGV.shift || "players.csv")

loop do
    puts "\n How many game rounds? (type 'quit' to exit)"
    answer = gets.chomp.downcase
    case answer
    when /^\d+$/
        knuckleheads.play(answer.to_i)
    when 'quit', 'exit', 'q'
        knuckleheads.print_stats
        break
    else
        puts "Enter a number of rounds or type 'quit'"
    end
end

knuckleheads.save_high_scores("high_scores.txt")