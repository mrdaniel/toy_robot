class Placement
  attr_reader :x, :y

  def initialize(x:, y:, direction:)
    @x = x
    @y = y
    @direction = direction
  end

  def to_s
    "#{@x},#{@y},#{@direction}"
  end
end