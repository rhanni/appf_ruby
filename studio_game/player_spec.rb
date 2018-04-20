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

    context "with a health of greater than 100" do
      before do
        @player = Player.new("Moe", 150)
      end
      it "is strong" do
        expect(@player).to be_strong
      end
    end

    context "with a health of equal to 100" do
          before do
            @player = Player.new("Curly", 100)
          end
          it "is wimpy" do
            expect(@player).not_to be_strong
          end
        end

    context "in a collection of players" do
        before do
            @player1 = Player.new("moe", 100)
            @player2 = Player.new("larry", 200)
            @player3 = Player.new("curly", 300)

            @players = [@player1, @player2, @player3]
        end

        it "is sorted by decreasing score" do
        #@players.sort.should == [@player3, @player2, @player1]
        expect(@players.sort).to eq [@player3, @player2, @player1]
        end
    end

end
