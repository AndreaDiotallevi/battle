require "player"

describe Player do
  describe "#name" do
    it "should return the player's name" do
      player = Player.new("Melvin")
      expect(player.name).to eq "Melvin"
    end

  end

end