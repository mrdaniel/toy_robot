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

  def next_placement
    coordinates = Direction.to_coordinates(@placement.direction)
    x = @placement.x + coordinates.x
    y = @placement.y + coordinates.y

    Placement.new(x: x, y: y, direction: @placement.direction)
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