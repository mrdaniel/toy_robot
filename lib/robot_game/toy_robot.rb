class ToyRobot
  attr_writer :placement

  def initialize
    @placement = nil
  end

  def placed?
    !@placement.nil?
  end

  def set_placement!(placement)
    self.placement = placement
  end

  def new_placement(args)
    Placement.new(x: args[0], y: args[1], direction: args[2])
  end

  def next_placement
    Placement.dup_and_move(@placement) if placed?
  end

  def turn_right!
    @placement.turn_right! if placed?
  end

  def turn_left!
    @placement.turn_left! if placed?
  end

  def report
    @placement.to_s if placed?
  end
end