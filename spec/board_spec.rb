RSpec.describe Board do
  it "has a default value when initialised" do
    board = Board.new

    expect(board.width).to eq 0..4
    expect(board.height).to eq 0..4
  end

  it "validates valid placement as true" do
    placement = Placement.new(x: 0, y: 2)
    board = Board.new

    expect(board.placement_valid?(placement)).to be true
  end

  it "validates valid placement as true" do
    placement = Placement.new(x: 0, y: -2)
    board = Board.new

    expect(board.placement_valid?(placement)).to be false
  end
end
