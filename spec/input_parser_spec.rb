RSpec.describe InputParser do
  it "parses blank string" do
    expect(InputParser.parse("\n")).to eq []
  end

  it "parses string with whitespaces" do
    expect(InputParser.parse("  MOVE  \n")).to eq [:move]
  end

  it "parses string with multiple commands" do
    expect(InputParser.parse("MOVE  FORWARD\n")).to eq [:move, :forward]
  end

  it "parses comma separated integers and strings" do
    expect(InputParser.parse("PLACE 1,2,NORTH\n")).to eq [:place, [1, 2, :north]]
  end
end
