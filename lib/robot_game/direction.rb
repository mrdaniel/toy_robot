module Direction
  require "ostruct"

  COORDINATES = {
    "NORTH" => OpenStruct.new(x: 0, y: 1),
    "EAST"  => OpenStruct.new(x: 1, y: 0),
    "SOUTH" => OpenStruct.new(x: 0, y: -1),
    "WEST"  => OpenStruct.new(x: -1, y: 0)
  }

  def self.to_coordinates(direction)
    COORDINATES[direction]
  end
end