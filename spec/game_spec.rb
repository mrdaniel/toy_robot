RSpec.describe Game do
  before(:each) do
    @game = Game.new
  end

  it "performs Example A from toy robot simulator instructions" do
    user_inputs = ["PLACE 0,0,NORTH", "MOVE", "REPORT", "EXIT"]
    allow_any_instance_of(Game).to receive(:gets).and_return(*user_inputs)

    expect { @game.await_user_input }.to output("0,1,NORTH\n").to_stdout_from_any_process
  end

  it "performs Example B from toy robot simulator instructions" do
    user_inputs = ["PLACE 0,0,NORTH", "LEFT", "REPORT", "EXIT"]
    allow_any_instance_of(Game).to receive(:gets).and_return(*user_inputs)

    expect { @game.await_user_input }.to output("0,0,WEST\n").to_stdout_from_any_process
  end

  it "performs Example C from toy robot simulator instructions" do
    user_inputs = ["PLACE 1,2,EAST", "MOVE", "MOVE", "LEFT", "MOVE", "REPORT", "EXIT"]
    allow_any_instance_of(Game).to receive(:gets).and_return(*user_inputs)

    expect { @game.await_user_input }.to output("3,3,NORTH\n").to_stdout_from_any_process
  end

  it "#instructions contain place and exit commands" do
    expect(@game.instructions).to include "PLACE x,y,direction"
    expect(@game.instructions).to include "exit the game"
  end

  it "#placement_valid? returns true with valid placement" do
    placement = Placement.new(x: 0, y: 0, direction: "NORTH")

    expect(@game.placement_valid?(placement)).to be true
  end

  it "#placement_valid? returns false when no placement object exists" do
    expect(@game.placement_valid?(nil)).to be false
  end

  it "#placement_valid? returns false when cooardinates outside board" do
    placement = Placement.new(x: 23, y: -4, direction: "NORTH")

    expect(@game.placement_valid?(placement)).to be false
  end
end