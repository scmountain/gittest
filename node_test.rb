require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < MiniTest::Test
  def test_node
    node = Node.new(100, "Happy Gilmore")
    assert node
  end
  def test_node_holds_data
    node = Node.new(100, "Happy Gilmore")
    assert_equal 100, node.score
    assert_equal "Happy Gilmore", node.title
  end
end
