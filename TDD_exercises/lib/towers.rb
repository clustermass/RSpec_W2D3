class Towers
  attr_accessor :board

  def initialize
    @board = Array.new(3) {Array.new}
    @board[0]= [3,2,1]
  end

  def valid_move?(from, to)
    return false if @board[from].empty?
    return true if @board[to].last.nil?
    if @board[from].last > @board[to].last
      return false
    end
      true
  end

  def make_move(from, to)
    @board[to] << @board[from].pop if self.valid_move?(from, to)
  end

  def won?
    @board[1..2].any? {|tower| tower.length == 3}
  end
end
