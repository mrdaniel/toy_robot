module RobotGame
  extend self

  def start_game
    game = Game.new
    puts game.instructions
  end
end
