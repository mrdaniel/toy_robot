RSpec.describe ToyRobot do
  let(:placement) { Placement.new(x: 2, y: 0, direction: "NORTH") }

  before(:each) do
    @robot = ToyRobot.new
  end

  it "#placed? returns false before robot is placed" do
    expect(@robot.placed?).to be false
  end

  it "#placed? returns true after robot is placed" do
    @robot.set_placement!(placement)

    expect(@robot.placed?).to be true
  end

  it "#report returns formatted string if robot placed" do
    @robot.set_placement!(placement)

    expect(@robot.report).to eq "2,0,NORTH"
  end

  it "#report returns nil if robot not placed" do
    expect(@robot.report).to be nil
  end
end
