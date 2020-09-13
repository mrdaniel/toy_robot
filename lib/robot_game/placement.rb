class Placement
  attr_accessor :x, :y, :direction

  def initialize(x:, y:, direction:)
    @x = x
    @y = y
    @direction = direction
  end

  def to_s
    "#{@x},#{@y},#{@direction.to_s.upcase}"
  end

  def self.try_create(args)
    x, y, direction = args

    Placement.new(x: x, y: y, direction: direction) if args_valid?(x, y, direction)
  end

  def turn_right!
    self.direction = Direction.next_to_right(@direction)
  end

  def turn_left!
    self.direction = Direction.next_to_left(@direction)
  end

  private

  def self.args_valid?(x, y, direction)
    x.is_a?(Integer) && y.is_a?(Integer) && Direction.valid?(direction)
  end
end