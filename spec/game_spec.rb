require 'game'

describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject(:game) { described_class.new(player_1, player_2) }

  describe "upon initialization" do
    it "it starts with two players" do
      expect(game.players).to include(player_1, player_2)
    end

    it 'the turn belongs to the first player' do
      expect(game.turn).to eq(0)
    end
  end

  describe '#attack' do
    it "attacks opponent" do
      expect(player_2).to receive(:receive_damage)
      game.attack
    end
  end

  describe '#switch_turn' do
    it "switches the turn" do
      game.switch_turn
      expect(game.turn).to eq(1)
    end
  end
end
