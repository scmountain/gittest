class Node
  attr_reader :score, :title
  attr_accessor :depth, :right, :left
  def initialize(score, title)
    @score = score
    @title = title
    @depth = 0
    @left = left
    @right = right
  end
end
