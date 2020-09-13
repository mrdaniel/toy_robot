RSpec.describe Direction do
  it ".to_coordinates increments y by 1 when facing NORTH" do
    coordinates = Direction.to_coordinates("NORTH")

    expect(coordinates.x).to eq 0
    expect(coordinates.y).to eq 1
  end

  it ".to_coordinates increments x by 1 when facing EAST" do
    coordinates = Direction.to_coordinates("EAST")

    expect(coordinates.x).to eq 1
    expect(coordinates.y).to eq 0
  end

  it ".to_coordinates decrements y by 1 when facing SOUTH" do
    coordinates = Direction.to_coordinates("SOUTH")

    expect(coordinates.x).to eq 0
    expect(coordinates.y).to eq -1
  end

  it ".to_coordinates decrements x by 1 when facing WEST" do
    coordinates = Direction.to_coordinates("WEST")

    expect(coordinates.x).to eq -1
    expect(coordinates.y).to eq 0
  end

  it ".next_to_right rotates direction to right" do
    expect(Direction.next_to_right("NORTH")).to eq "EAST"
    expect(Direction.next_to_right("EAST")).to  eq "SOUTH"
    expect(Direction.next_to_right("SOUTH")).to eq "WEST"
    expect(Direction.next_to_right("WEST")).to  eq "NORTH"
  end

  it ".next_to_left rotates direction to left" do
    expect(Direction.next_to_left("NORTH")).to eq "WEST"
    expect(Direction.next_to_left("WEST")).to  eq "SOUTH"
    expect(Direction.next_to_left("SOUTH")).to eq "EAST"
    expect(Direction.next_to_left("EAST")).to  eq "NORTH"
  end
end
