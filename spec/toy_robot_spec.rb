RSpec.describe ToyRobot do
  let(:placement) { Placement.new(x: 2, y: 0, direction: :north) }

  before(:each) do
    @robot = ToyRobot.new(placement)
  end

  it "#report returns formatted string" do
    @robot.set_placement!(placement)

    expect(@robot.report).to eq "2,0,NORTH"
  end

  it "#next_placement returns a new placement object" do
    @robot.set_placement!(placement)
    new_placement = @robot.next_placement

    expect(new_placement.is_a?(Placement)).to be true
  end

  it "#turn_right! updates direction" do
    @robot.set_placement!(placement)
    @robot.turn_right!

    expect(@robot.report).to eq "2,0,EAST"
  end
end
