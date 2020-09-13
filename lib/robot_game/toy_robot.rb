class ToyRobot
  attr_writer :placement

  def initialize(placement)
    @placement = placement
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
    @placement.turn_right!
  end

  def turn_left!
    @placement.turn_left!
  end

  def report
    @placement.to_s
  end
end