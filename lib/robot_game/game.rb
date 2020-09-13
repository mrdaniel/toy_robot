class Game
  require "yaml"

  def initialize
    @board = Board.new
    @toy_robot = nil
  end

  def instructions
    if load_instructions
      load_instructions.gsub("%{board_size}", @board.to_s)
    else
      instruction_error_message
    end
  end

  private

  def load_instructions
    begin
      root_dir = File.dirname(File.expand_path("..", __dir__))
      file = File.join(root_dir, "instructions.yml")
      YAML.load_file(file)["instructions"]
    rescue Errno::ENOENT
      instruction_error_message
    end
  end

  def instruction_error_message
    "Woops! We couldn't load the instructions. Type 'exit' to exit the game."
  end
end