class Board
  attr_reader :width, :height

  def initialize
    @width = 0..4
    @height = 0..4
  end

  def to_s
    "#{@width.size}x#{@height.size} board"
  end

  def coordinates_valid?(placement)
    @width.include?(placement.x) && @height.include?(placement.y)
  end
end