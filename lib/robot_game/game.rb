class Game
  require "yaml"

  attr_writer :toy_robot

  def initialize
    @board = Board.new
    @toy_robot = nil
  end

  def await_user_input
    input = gets
    command, args = InputParser.parse(input)

    return if command == :exit
    return await_user_input if @toy_robot.nil? && command != :place

    case command
    when :place
      placement = Placement.try_create(args)
      create_or_update_robot(placement) if placement_valid?(placement)
    when :move
      placement = @toy_robot.next_placement
      create_or_update_robot(placement) if placement_valid?(placement)
    when :left
      @toy_robot.turn_left!
    when :right
      @toy_robot.turn_right!
    when :report
      puts @toy_robot.report
    else
      puts "Unknown command: #{input}"
    end

    await_user_input
  end

  def placement_valid?(placement)
    !placement.nil? && @board.coordinates_valid?(placement)
  end

  def instructions
    if load_instructions
      load_instructions.gsub("%{board_size}", @board.to_s)
    else
      instruction_error_message
    end
  end

  private

  def create_or_update_robot(placement)
    if @toy_robot
      @toy_robot.set_placement!(placement)
    else
      self.toy_robot = ToyRobot.new(placement)
    end
  end

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