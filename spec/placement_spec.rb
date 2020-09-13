RSpec.describe Placement do
  before(:each) do
    @placement = Placement.new(x: 3, y: 4, direction: :north)
  end

  it "#to_s formats placement attributes" do
    expect(@placement.to_s).to eq "3,4,NORTH"
  end

  it "#dup_and_move returns new object and moves it in a direction" do
    new_placement = Placement.dup_and_move(@placement)

    expect(@placement.object_id).not_to eq new_placement.object_id
    expect(new_placement.to_s).to eq "3,5,NORTH"
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
