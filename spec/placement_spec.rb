RSpec.describe Placement do
  it "has default nil values when initialised without arguments" do
    placement = Placement.new

    expect(placement.x).to be nil
    expect(placement.y).to be nil
    expect(placement.direction).to be nil
  end

  it "can accept arguments when initialized" do
    placement = Placement.new(x: 3, y: 4, direction: "NORTH")

    expect(placement.x).to eq 3
    expect(placement.y).to eq 4
    expect(placement.direction).to eq "NORTH"
  end
end
