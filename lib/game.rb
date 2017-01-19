class Game

  attr_reader :players, :turn, :no_turn

  def initialize(*players)
    @players = players
    @k = 0
    @turn = @k % 2
    @no_turn = (@k + 1) % 2
  end

  def attack
    @players[@no_turn].receive_damage
  end

  def switch_turn
    @k += 1
    @turn = @k % 2
    @no_turn = (@k + 1) % 2
  end

end
