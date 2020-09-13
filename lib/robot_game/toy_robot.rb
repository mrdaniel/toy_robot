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

  def report
    @placement.to_s if placed?
  end

  def move
    Placement.dup_and_move(@placement) if placed?
  end

  def turn_right!
    @placement.turn_right! if placed?
  end

  def turn_left!
    @placement.turn_left! if placed?
  end
end