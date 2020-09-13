module RobotGame
  extend self

  def start_game
    game = Game.new
    puts game.instructions
    game.await_user_input
  end
end
