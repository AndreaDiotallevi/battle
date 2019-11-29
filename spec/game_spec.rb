require "game"

describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :player, receive_damage: 50 }
  let(:game) { Game.new(player_1, player_2) }

  describe "#player_1" do
    it "should return the first player" do
      expect(game.player_1).to eq player_1
    end
  end

  describe "#player_2" do
    it "should return the second player" do
      expect(game.player_2).to eq player_2
    end
  end

  describe "#attack" do
    it "should return the player's reduced hit points" do
      expect(game.attack).to eq 50
    end
  end
end