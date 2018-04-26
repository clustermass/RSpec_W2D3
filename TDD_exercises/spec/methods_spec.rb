require 'methods'
require 'rspec'


describe Array do
  describe "#my_uniq" do
    it "returns an array with no duplicates" do
      expect([1,2,2,3,3,4,2].my_uniq).to eq([1,2,3,4])
    end


  end

  describe "#two_sum " do
    it "returns an array with indexes where two elements sum to 0" do
       expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end
  end

  describe "#my_transpose" do
    it "returns an array with its rows switched with its columns" do
      expect([[0, 1, 2], [3, 4, 5], [6, 7, 8]].my_transpose).to eq([[0,3,6], [1,4,7], [2,5,8]])
    end
  end
end

RSpec.describe do
  describe "#stock_picker" do
    it "returns the indexes of the days with the biggest profit" do
      expect(stock_picker([1,25,50,100,75,35,12,8,89,5000,17])).to eq([0,9])
    end

    it "makes sure it does not select the sell day before the buy day" do
      expect(stock_picker([1,25,50,100,75,35,12,8,89,5000,17].reverse)).to eq([0,1])
    end

    it "raises error No profitable days! if array is sorted " do
      expect{stock_picker([1,2,3,4,5])}.to raise_error("No profitable days!")
    end

  end
end
