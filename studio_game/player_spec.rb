require_relative 'player'

describe Player do

    before do
        @player = Player.new("larry")
    end

    it "has a capitalized name" do
        expect(@player.name).to eq("Larry")
    end

    it "has an initial health" do
        expect(@player.health).to eq(100)
    end
    
    it "has a string representation" do
        expect(@player.to_s).to eq("I'm Larry with a health of 100.")
    end

    it "has a score of X" do
        actual_score = @player.name.length + @player.health

        expect(@player.score).to eq(actual_score)
    end

    it "increases health by 15 when w00ted" do
        w00ted_health = @player.health + 15
        expect(@player.w00t).to eq(w00ted_health)
    end

    it "decreases health by 10 when blam'd" do
        blammed_health = @player.health - 10
        expect(@player.blam).to eq(blammed_health)
    end

end