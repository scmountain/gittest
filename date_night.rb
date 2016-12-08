class DateNight
  attr_accessor :head, :current, :array
  def initialize
    @current = nil
    @head = nil
  end
  def insert(score, title)
    node = Node.new(score, title)
    if @head == nil
      @head = node
      @current = @head
    end
      if node.score < @current.score
        if @current.left != nil
          # @current.depth = (@current.depth + 1)
          @current = @current.left
          insert(score, title)
        else
          @current.left = node
          @current = @head
        end
      end
      if node.score > @current.score
        if @current.right != nil
          # @current.depth = (@current.depth + 1)
          @current = @current.right
          insert(score, title)
        else
          @current.right = node
          @current = @head
        end
      end
  end
  def min_find
    if @current.left != nil
      @current = @current.left
      min_find
    else
      { current.title => current.score }
    end
  end
  def max_find
    # binding.pry
    if @current.right != nil
      @current = @current.right
      min_find
    else
      { current.title => current.score }
    end
  end
end
