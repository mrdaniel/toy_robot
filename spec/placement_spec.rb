RSpec.describe Placement do
  it "#to_s formats placement attributes" do
    placement = Placement.new(x: 3, y: 4, direction: "NORTH")

    expect(placement.to_s).to eq "3,4,NORTH"
  end

  it "#dup_and_move returns new object and moves it in a direction" do
    placement = Placement.new(x: 3, y: 4, direction: "NORTH")
    new_placement = Placement.dup_and_move(placement)

    expect(placement.object_id).not_to eq new_placement.object_id
    expect(new_placement.to_s).to eq "3,5,NORTH"
  end
end
