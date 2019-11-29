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
    it "should take one argument" do
      expect(player_1).to respond_to(:attack).with(1).argument
    end

    it "should reduce the other player's hit points by 10" do
      expect { player_1.attack(player_2) }.to change { player_2.hit_points }.by -10
    end

  end


  # describe "#receive_damage" do

  # end

end