
class Game

  attr_reader :player_x, :player_o

  def self.create(player_x, player_o)
    @game = Game.new(player_x, player_o)
  end

  def self.instance
    @game
  end

  def initialise(player_x, player_o)
    @player_x = player_x
    @player_o = player_o
    @current_turn = player_x
    @defender = player_o
    @lost = false
  end
end
