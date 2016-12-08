require 'minitest/autorun'
require 'minitest/pride'
require './lib/date_night'
require './lib/node'
require 'pry'

class DateNightTest < MiniTest::Test
  def test_tree
    tree = DateNight.new
    assert_instance_of DateNight, tree
  end
  def test_insert_head_node
    tree = DateNight.new
    tree.insert(50, "Happy Gilmore")
    # assert_equal 100, node.score
    # assert_equal "Happy Gilmore", node.title
    refute_equal nil, tree.head
  end
  def test_insert_right_node
    tree = DateNight.new
    tree.insert(50, "Happy Gilmore")
    tree.insert(92, "Sharknado")
    # binding.pry
    assert_equal 92, tree.head.right.score
  end
  def test_insert_left_node
    tree = DateNight.new
    tree.insert(50, "Happy Gilmore")
    tree.insert(92, "Sharknado")
    assert_equal 92, tree.head.right.score
    tree.insert(25, "Mr. Jingles")
    assert_equal 25, tree.head.left.score
  end

  def test_left_depth
    tree = DateNight.new
    tree.insert(50, "Happy Gilmore")
    tree.insert(92, "Sharknado")
    assert_equal 92, tree.head.right.score
    tree.insert(25, "Mr. Jingles")
    assert_equal 25, tree.head.left.score
    tree.insert(24, "Forrest Gump")
    assert_equal 24, tree.current.left.left.score
  end

  def test_right_depth
    tree = DateNight.new
    tree.insert(50, "Happy Gilmore")
    tree.insert(92, "Sharknado")
    assert_equal 92, tree.head.right.score
    tree.insert(26, "Mr. Jingles")
    assert_equal 26, tree.head.left.score
    tree.insert(24, "Forrest Gump")
    tree.insert(100, "Toy Story")
    assert_equal 100, tree.current.right.right.score
  end
  # def test_node_has_depth
  #   tree = DateNight.new
  #   tree.insert(50,"Happy Gilmore")
  #   tree.insert(92, "Sharknado")
  #   assert_equal 1, tree.current.depth
  #   tree.insert(95, "Toy Story")
  #   tree.insert(100, "Toy Story2")
  #   binding.pry
  # end
  def test_min
    tree = DateNight.new
    tree.insert(50, "Happy Gilmore")
    tree.insert(92, "Sharknado")
    tree.insert(26, "Mr. Jingles")
    tree.insert(24, "Forrest Gump")
    tree.insert(100, "Toy Story")
    answer = { "Forrest Gump" => 24 }
    assert_equal answer, tree.min_find
  end

  def test_max
    tree = DateNight.new
    tree.insert(50, "Happy Gilmore")
    tree.insert(92, "Sharknado")
    tree.insert(26, "Mr. Jingles")
    tree.insert(24, "Forrest Gump")
    answer = { "Sharknado" => 92 }
    assert_equal answer, tree.max_find
  end
# def test_load_txt
#   tree = DateNight.new
#   tree.insert"34, Hannibal Buress: Comedy Camisado
#   63, Meet My Valentine
#   22, Experimenter
#   84, French Dirty
#   41, Love
#   10, I Love You Phillip Morris"
# end

end
