class Placement
  attr_accessor :x, :y, :direction

  def initialize(x:, y:, direction:)
    @x = x
    @y = y
    @direction = direction
  end

  def to_s
    "#{@x},#{@y},#{@direction}"
  end

  def self.dup_and_move(placement)
    new_placement = placement.dup
    coordinates = Direction.to_coordinates(new_placement.direction)
    new_placement.x += coordinates.x
    new_placement.y += coordinates.y

    new_placement
  end

  def turn_right!
    self.direction = Direction.next_to_right(@direction)
  end

  def turn_left!
    self.direction = Direction.next_to_left(@direction)
  end
end