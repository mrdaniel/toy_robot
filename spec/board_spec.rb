RSpec.describe Board do
  it "has a default value when initialised" do
    board = Board.new

    expect(board.width).to eq 0..4
    expect(board.height).to eq 0..4
  end

  it "#placement_valid? returns true when valid" do
    placement = Placement.new(x: 0, y: 2, direction: "NORTH")
    board = Board.new

    expect(board.placement_valid?(placement)).to be true
  end

  it "#placement_valid? returns false when invalid" do
    placement = Placement.new(x: 0, y: -2, direction: "NORTH")
    board = Board.new

    expect(board.placement_valid?(placement)).to be false
  end
end
