RSpec.describe Placement do
  before(:each) do
    @placement = Placement.new(x: 3, y: 4, direction: :north)
  end

  it ".try_create returns nil when args are invalid" do
    invalid_placement = Placement.try_create([:boo, "2", :up])

    expect(invalid_placement).to be nil
  end

  it ".try_create returns placement object when args are invalid" do
    valid_placement = Placement.try_create([23, 34, :north])

    expect(valid_placement.is_a?(Placement)).to be true
  end

  it "#to_s formats placement attributes" do
    expect(@placement.to_s).to eq "3,4,NORTH"
  end

  it "#turn_right! rotates and updates direction" do
    @placement.turn_right!

    expect(@placement.direction).to eq :east
  end

  it "#turn_left! rotates and updates direction" do
    @placement.turn_left!

    expect(@placement.direction).to eq :west
  end
end
