require "towers"
require "rspec"

describe Towers do
  subject(:towers) {Towers.new}

    describe "#initialize" do
      it "sets the initial board as an array of arrays with length 3" do
        expect(towers.board).to eq([[3,2,1],[],[]])
      end
    end

    describe "#valid_move?" do
      it "returns true if the tower which the disc is taken from is not empty" do
        expect(towers.valid_move?(0,1)).to be true
      end

      it "returns false if the tower which the disc is taken from is empty" do
        expect(towers.valid_move?(1,2)).to be false
      end

      it "returns false if the top disk on the destination tower is larger" do
        towers.board = [[1],[2],[3]]
        expect(towers.valid_move?(2,1)).to be false
      end

      it "returns false if the top disk on the destination tower is larger" do
        towers.board = [[1],[3],[2]]
        expect(towers.valid_move?(2,1)).to be true
      end
    end

    describe "#make_move" do
      before(:each) do
         towers.make_move(0,1)
       end
      it "moves disk from one tower to another" do
        expect(towers.board).to eq([[3,2],[1],[]])
      end
      it "calls #valid_move?" do
        expect(towers).to receive(:valid_move?).with(0,1)
        towers.make_move(0,1)
      end
    end

    describe "#won?" do
      it "returns true if tower 2 or 3 is full" do
        towers.board = [[],[],[1,2,3]]
        expect(towers.won?).to be true
      end

      it "returns false if tower 2 or 3 is not full" do
        expect(towers.won?).to be false
      end
    end
end
