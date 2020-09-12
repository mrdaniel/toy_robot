class ToyRobot
  attr_writer :placement

  def initialize
    @placement = nil
  end

  def placed?
    !@placement.nil?
  end

  def set_placement!(placement)
    self.placement = placement
  end
end