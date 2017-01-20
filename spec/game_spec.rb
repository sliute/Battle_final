require 'game'

describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  let(:player_3) { double :player }
  subject(:game) { described_class.new(player_1, player_2) }
  subject(:lost_game) { described_class.new(player_1, player_3) }

  before(:each) do
    allow(player_1).to receive(:hit_points).and_return(100)
    allow(player_2).to receive(:hit_points).and_return(100)
    allow(player_3).to receive(:hit_points).and_return(0)
  end

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

  describe "#game_over?" do
    it "is not over in the beginning" do
      expect(game.game_over?).to be false
    end

    it "is over if a player has 0 points" do
      expect(lost_game.game_over?).to be true
    end
  end
end
