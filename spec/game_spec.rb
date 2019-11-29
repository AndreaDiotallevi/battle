require "game"

describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :player, receive_damage: 50 }
  let(:game) { Game.new }

  describe "#attack" do
    it "should return the player's reduced hit points" do
      expect(game.attack(player_2)).to eq 50
    end
  end
end