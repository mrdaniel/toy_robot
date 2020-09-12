class Placement
  attr_reader :x, :y, :direction

  def initialize(x: nil, y: nil, direction: nil)
    @x = x
    @y = y
    @direction = direction
  end
end