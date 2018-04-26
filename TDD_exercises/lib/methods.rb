class Array
  def my_uniq
    temp_hash = Hash.new
    self.each {|el| temp_hash[el] = nil}
    temp_hash.keys
  end

  def two_sum
    result = []
    self.each_index do |i|
      self.each_index do |j|
        if i < j
          result << [i, j] if self[i] + self[j] == 0
        end
      end
    end
    result
  end

  def my_transpose
    result = Array.new(self.length) {Array.new(self.length)}
    self.each_index do |i|
      self.each_index do |j|
        result[j][i] = self[i][j]
      end
    end
    result
  end
end


def stock_picker(prices)
  raise "No profitable days!" if prices == prices.sort
  best_days = [0,1]
  greatest_sum = prices[1] - prices[0]
  prices.each_with_index do |price1, el1|
    prices.each_with_index do |price2, el2|
      profit1 = price2 - price1
      if profit1 > greatest_sum && el2 > el1
        greatest_sum = profit1
        best_days = [el1,el2]
      end
    end
  end
  best_days
end
