class Game

  @instance = nil

  attr_reader :players, :turn, :no_turn

  def initialize(*players)
    @players = players
    @k = 0
    @turn = @k % 2
    @no_turn = (@k + 1) % 2
    self.class.instance = self
  end

  def self.instance
    @instance
  end

  def self.instance=(something)
    @instance = something
  end

  def attack
    @players[@no_turn].receive_damage
  end

  def switch_turn
    @k += 1
    @turn = @k % 2
    @no_turn = (@k + 1) % 2
  end

  def game_over?
    @players[@turn].hit_points <= 0 || @players[@no_turn].hit_points <= 0
  end

end
