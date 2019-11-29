require "player"

describe Player do
  let(:player_1) { Player.new("Melvin") }
  let(:player_2) { Player.new("Derrick") }

  describe "#name" do
    it "should return the player's name" do
      expect(player_1.name).to eq "Melvin"
    end

  end

  describe "#hit_points" do
    it "should return the player's hit points" do
      player = Player.new("Melvin")
      expect(player_1.hit_points).to eq Player::DEFAULT_HIT_POINTS
    end 
  end

  describe "#attack" do
    it "should return the reduced hit points of the attacked player" do
      expect(player_1.attack(player_2)).to eq Player::DEFAULT_HIT_POINTS - Player::DEFAULT_HIT_DAMAGE
    end
  end

  describe "#receive_damage" do
    it "should reduce the player's hit points by 10" do
      expect { player_2.receive_damage }.to change { player_2.hit_points }.by -Player::DEFAULT_HIT_DAMAGE
    end
  end
end