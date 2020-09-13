class Placement
  attr_accessor :x, :y
  attr_reader :direction

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
end