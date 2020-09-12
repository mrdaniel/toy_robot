class Board
  attr_reader :width, :height

  def initialize
    @width = 0..4
    @height = 0..4
  end
end