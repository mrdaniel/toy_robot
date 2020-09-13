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
end
