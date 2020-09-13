RSpec.describe Direction do
  it ".to_coordinates increments y by 1 when facing NORTH" do
    coordinates = Direction.to_coordinates(:north)

    expect(coordinates.x).to eq 0
    expect(coordinates.y).to eq 1
  end

  it ".to_coordinates increments x by 1 when facing EAST" do
    coordinates = Direction.to_coordinates(:east)

    expect(coordinates.x).to eq 1
    expect(coordinates.y).to eq 0
  end

  it ".to_coordinates decrements y by 1 when facing SOUTH" do
    coordinates = Direction.to_coordinates(:south)

    expect(coordinates.x).to eq 0
    expect(coordinates.y).to eq -1
  end

  it ".to_coordinates decrements x by 1 when facing WEST" do
    coordinates = Direction.to_coordinates(:west)

    expect(coordinates.x).to eq -1
    expect(coordinates.y).to eq 0
  end

  it ".next_to_right rotates direction to right" do
    expect(Direction.next_to_right(:north)).to eq :east
    expect(Direction.next_to_right(:east)).to  eq :south
    expect(Direction.next_to_right(:south)).to eq :west
    expect(Direction.next_to_right(:west)).to  eq :north
  end

  it ".next_to_left rotates direction to left" do
    expect(Direction.next_to_left(:north)).to eq :west
    expect(Direction.next_to_left(:west)).to  eq :south
    expect(Direction.next_to_left(:south)).to eq :east
    expect(Direction.next_to_left(:east)).to  eq :north
  end
end
