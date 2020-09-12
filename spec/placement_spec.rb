RSpec.describe Placement do
  it "#to_s formats placement attributes" do
    placement = Placement.new(x: 3, y: 4, direction: "NORTH")

    expect(placement.to_s).to eq "3,4,NORTH"
  end
end
