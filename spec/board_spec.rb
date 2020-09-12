RSpec.describe Board do
  it "has a default value when initialised" do
    board = Board.new

    expect(board.width).to eq 0..4
    expect(board.height).to eq 0..4
  end
end
