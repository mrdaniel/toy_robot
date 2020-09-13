RSpec.describe ToyRobot do
  it "#placed? returns false before robot is placed" do
    robot = ToyRobot.new

    expect(robot.placed?).to be false
  end

  it "#placed? returns true after robot is placed" do
    placement = Placement.new(x: 2, y: 0, direction: "NORTH")
    robot = ToyRobot.new
    robot.set_placement!(placement)

    expect(robot.placed?).to be true
  end

  it "#report returns formatted string if robot placed" do
    placement = Placement.new(x: 2, y: 0, direction: "NORTH")
    robot = ToyRobot.new
    robot.set_placement!(placement)

    expect(robot.report).to eq "2,0,NORTH"
  end

  it "#report returns nil if robot not placed" do
    robot = ToyRobot.new

    expect(robot.report).to be nil
  end
end
