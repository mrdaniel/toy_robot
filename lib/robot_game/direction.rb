module Direction
  extend self
  require "ostruct"

  COORDINATES = {
    "NORTH" => OpenStruct.new(x: 0, y: 1),
    "EAST"  => OpenStruct.new(x: 1, y: 0),
    "SOUTH" => OpenStruct.new(x: 0, y: -1),
    "WEST"  => OpenStruct.new(x: -1, y: 0)
  }

  DIRECTIONS = COORDINATES.keys

  def to_coordinates(direction)
    COORDINATES[direction]
  end

  def next_to_right(direction)
    DIRECTIONS[increment_index(direction) % DIRECTIONS.size]
  end

  def next_to_left(direction)
    DIRECTIONS[decrement_index(direction) % DIRECTIONS.size]
  end

  private

  def increment_index(direction)
    DIRECTIONS.index(direction) + 1
  end

  def decrement_index(direction)
    DIRECTIONS.index(direction) - 1
  end
end